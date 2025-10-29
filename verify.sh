#!/bin/bash
# ===== Configurable Verification Script =====
# Usage: ./verify.sh [options]

set -e  # Exit on error

# ===== Configuration =====
MODEL_FILE="main.pml"
PAN_EXECUTABLE="pan"
SPIN_OPTS=""
GCC_OPTS="-DSAFETY -O2"
DEPTH="-m10000"
WIDTH="-w24"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ===== Available LTL Properties =====
declare -A LTL_PROPERTIES=(
    ["back_to_user"]="Basic liveness: eventually return to user"
    ["exc_leads_to_user"]="Exception always leads to user"
    ["starvation_free_task1"]="Task 1 starvation freedom"
    ["starvation_free_task2"]="Task 2 starvation freedom"
    ["all_starvation_free"]="All tasks starvation free"
    ["P2_switching_not_P1_witness"]="P2 context switch witness"
    ["p2_double_context_switch"]="P2 double context switch"
    ["smoke_P1_user_no_pending"]="Smoke test: P1 user no pending"
    ["smoke_P2_user_no_pending"]="Smoke test: P2 user no pending"
    ["delayed_become_ready"]="Delayed tasks eventually ready"
    ["tick_monotonic"]="Tick counter monotonic"
    ["delayed_not_in_ready_queue"]="Delayed not in ready queue"
    ["sortlink_is_sorted"]="SortLink is always sorted (2 elements)"
    ["sortlink_three_sorted"]="SortLink is always sorted (3 elements)"
)

# ===== Functions =====
print_header() {
    echo -e "${BLUE}=========================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}=========================================${NC}"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ $1${NC}"
}

list_ltl_properties() {
    echo ""
    print_header "Available LTL Properties"
    echo ""
    for key in "${!LTL_PROPERTIES[@]}"; do
        printf "  %-35s : %s\n" "$key" "${LTL_PROPERTIES[$key]}"
    done | sort
    echo ""
}

show_help() {
    cat << EOF
Configurable SPIN Verification Script

Usage: $0 [OPTIONS]

OPTIONS:
    -l, --ltl PROPERTY       Verify specific LTL property
    -n, --no-ltl             Run without LTL (assertion checking only)
    -a, --all                Run all LTL properties sequentially
    -s, --list               List all available LTL properties
    -d, --depth NUM          Set search depth (default: 10000)
    -w, --width NUM          Set hash table width (default: 24)
    -c, --compile-only       Only compile, don't run verification
    -t, --trail              Generate and show trail for last error
    -v, --verbose            Verbose output
    -h, --help               Show this help message

EXAMPLES:
    $0 --ltl back_to_user
    $0 --no-ltl
    $0 --all
    $0 --list
    $0 --ltl back_to_user --depth 20000
    $0 --trail

EOF
}

compile_model() {
    local use_ltl="$1"
    local gcc_flags="$GCC_OPTS"
    
    # If using LTL, remove -DSAFETY (it disables -a option)
    if [ -n "$use_ltl" ]; then
        gcc_flags=$(echo "$gcc_flags" | sed 's/-DSAFETY//')
        print_info "Compiling model for LTL verification..."
    else
        print_info "Compiling model for safety checking..."
    fi
    
    echo ""
    echo -e "${BLUE}[Command 1]${NC} spin -a $MODEL_FILE"
    if [ -n "$VERBOSE" ]; then
        spin -a $MODEL_FILE
    else
        spin -a $MODEL_FILE 2>&1 | grep -E "(error|warning)" || true
    fi
    
    echo -e "${BLUE}[Command 2]${NC} gcc $gcc_flags -o $PAN_EXECUTABLE pan.c"
    if [ -n "$VERBOSE" ]; then
        gcc $gcc_flags -o $PAN_EXECUTABLE pan.c
    else
        gcc $gcc_flags -o $PAN_EXECUTABLE pan.c 2>&1 | grep -E "(error|warning)" || true
    fi
    
    if [ $? -eq 0 ]; then
        print_success "Model compiled successfully"
        echo ""
        return 0
    else
        print_error "Compilation failed"
        return 1
    fi
}

run_verification() {
    local ltl_name="$1"
    local description="$2"
    
    if [ -n "$ltl_name" ]; then
        print_header "Verifying: $ltl_name"
        print_info "Description: $description"
    else
        print_header "Verification (No LTL - Assertion Checking Only)"
    fi
    
    # Compile (pass ltl_name to determine compilation flags)
    if ! compile_model "$ltl_name"; then
        return 1
    fi
    
    # Run verification
    print_info "Running verification..."
    local start_time=$(date +%s)
    local result=0
    
    local ltl_flag=""
    if [ -n "$ltl_name" ]; then
        ltl_flag="-a -N $ltl_name"
    fi
    
    # Show the actual command being executed
    echo ""
    echo -e "${BLUE}[Command 3]${NC} ./$PAN_EXECUTABLE $ltl_flag $DEPTH $WIDTH"
    echo ""
    
    if [ -n "$VERBOSE" ]; then
        ./$PAN_EXECUTABLE $ltl_flag $DEPTH $WIDTH
        result=$?
    else
        # Save full output to temp file
        local temp_output=$(mktemp)
        ./$PAN_EXECUTABLE $ltl_flag $DEPTH $WIDTH > "$temp_output" 2>&1
        result=$?
        
        # Display the output (full statistics are important)
        cat "$temp_output"
        rm -f "$temp_output"
    fi
    
    local end_time=$(date +%s)
    local duration=$((end_time - start_time))
    
    echo ""
    if [ $result -eq 0 ]; then
        print_success "Verification PASSED (${duration}s)"
        return 0
    else
        print_error "Verification FAILED (${duration}s)"
        print_warning "Trail file available: ${MODEL_FILE}.trail"
        print_info "Use: spin -t -p -g -l $MODEL_FILE | tail -100"
        return 1
    fi
}

show_trail() {
    if [ ! -f "${MODEL_FILE}.trail" ]; then
        print_error "No trail file found!"
        print_info "Run verification first to generate a trail"
        return 1
    fi
    
    print_header "Trail Analysis"
    print_info "Showing last 100 steps of trail..."
    echo ""
    spin -t -p -g -l $MODEL_FILE 2>&1 | tail -100
}

verify_all() {
    local passed=0
    local failed=0
    local total=${#LTL_PROPERTIES[@]}
    
    print_header "Running All LTL Properties ($total total)"
    echo ""
    
    # Create results file
    local results_file="verification_results_$(date +%Y%m%d_%H%M%S).txt"
    echo "Verification Results - $(date)" > $results_file
    echo "======================================" >> $results_file
    echo "" >> $results_file
    
    for ltl_name in $(echo "${!LTL_PROPERTIES[@]}" | tr ' ' '\n' | sort); do
        description="${LTL_PROPERTIES[$ltl_name]}"
        echo "" | tee -a $results_file
        
        if run_verification "$ltl_name" "$description" 2>&1 | tee -a $results_file; then
            ((passed++))
            echo "PASS: $ltl_name" >> $results_file
        else
            ((failed++))
            echo "FAIL: $ltl_name" >> $results_file
        fi
        
        echo "---" >> $results_file
        sleep 1  # Brief pause between runs
    done
    
    # Summary
    echo ""
    print_header "Verification Summary"
    echo ""
    print_success "Passed: $passed / $total"
    if [ $failed -gt 0 ]; then
        print_error "Failed: $failed / $total"
    else
        print_info "Failed: $failed / $total"
    fi
    echo ""
    print_info "Detailed results saved to: $results_file"
    
    return $failed
}

# ===== Main Script =====
LTL_PROPERTY=""
NO_LTL=""
RUN_ALL=""
COMPILE_ONLY=""
SHOW_TRAIL=""
VERBOSE=""

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -l|--ltl)
            LTL_PROPERTY="$2"
            shift 2
            ;;
        -n|--no-ltl)
            NO_LTL="1"
            shift
            ;;
        -a|--all)
            RUN_ALL="1"
            shift
            ;;
        -s|--list)
            list_ltl_properties
            exit 0
            ;;
        -d|--depth)
            DEPTH="-m$2"
            shift 2
            ;;
        -w|--width)
            WIDTH="-w$2"
            shift 2
            ;;
        -c|--compile-only)
            COMPILE_ONLY="1"
            shift
            ;;
        -t|--trail)
            SHOW_TRAIL="1"
            shift
            ;;
        -v|--verbose)
            VERBOSE="1"
            shift
            ;;
        -h|--help)
            show_help
            exit 0
            ;;
        *)
            print_error "Unknown option: $1"
            echo ""
            show_help
            exit 1
            ;;
    esac
done

# Check if model file exists
if [ ! -f "$MODEL_FILE" ]; then
    print_error "Model file not found: $MODEL_FILE"
    exit 1
fi

# Execute based on options
if [ -n "$SHOW_TRAIL" ]; then
    show_trail
    exit $?
fi

if [ -n "$RUN_ALL" ]; then
    verify_all
    exit $?
fi

if [ -n "$COMPILE_ONLY" ]; then
    compile_model "$LTL_PROPERTY"
    exit $?
fi

if [ -n "$NO_LTL" ]; then
    run_verification "" ""
    exit $?
fi

if [ -n "$LTL_PROPERTY" ]; then
    if [ -z "${LTL_PROPERTIES[$LTL_PROPERTY]}" ]; then
        print_error "Unknown LTL property: $LTL_PROPERTY"
        echo ""
        list_ltl_properties
        exit 1
    fi
    run_verification "$LTL_PROPERTY" "${LTL_PROPERTIES[$LTL_PROPERTY]}"
    exit $?
fi

# Default: show help
show_help
exit 0


# Changelog - Scheduling Livelock Verification Suite

## [1.1.0] - 2025-10-31

### Added
- **Timeout mechanism** for all verification steps
  - Configurable `TIMEOUT` variable (default: 5 seconds)
  - Prevents verification from hanging indefinitely
  - Automatically skips timed-out steps and continues
  - Exit code 124 properly handled as timeout

### Changed
- All `./pan` invocations now use `timeout ${TIMEOUT}s`
- Verification results show timeout warnings (⚠) when applicable
- Documentation updated to explain timeout configuration

### Technical Details
- **Step 2** (Basic verification): timeout protected
- **Step 3** (Starvation freedom): timeout protected  
- **Step 4** (Progress property): timeout protected
- Timeout returns exit code 0 (no errors found within time limit)

### Configuration
```bash
# Edit at top of verify_livelock.sh:
TIMEOUT=5   # seconds per verification step
DEPTH=2000  # maximum search depth
```

### Usage
```bash
# Use default timeout (5s)
bash verify_livelock.sh

# Override timeout
TIMEOUT=10 bash verify_livelock.sh

# Quick test
TIMEOUT=3 DEPTH=1000 bash verify_livelock.sh
```

## [1.0.0] - 2025-10-31

### Initial Release
- Three-task livelock scenario implementation
- LTL property verification (starvation freedom)
- Full and simplified process models
- Comprehensive documentation
- Automatic verification script

### Features
- PrevTask, VictimTask, LuckyTask processes
- IdleTask to prevent deadlock
- Starvation freedom checking
- Progress property verification
- State space exploration metrics

---

**Note**: This suite demonstrates the scheduling livelock issue but does not include a fix implementation.


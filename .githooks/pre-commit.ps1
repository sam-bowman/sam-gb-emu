# Sam-GB-Emu Pre-Commit Hook

# Runs before commits and validates the repository state.

Write-Host ""
Write-Host "Running Sam-GB-Emu pre-commit checks..."
Write-Host "===================================="
Write-Host ""

# Check branch

$currentBranch = git branch --show-current

if ($currentBranch -eq "main") {
Write-Host "ERROR: Direct commits to main are not allowed."
Write-Host "Create a feature branch before committing."
exit 1
}

# Check staged changes

$stagedChanges = git diff --cached --name-only

if (-not $stagedChanges) {
Write-Host "ERROR: No staged changes found."
Write-Host "Use git add before committing."
exit 1
}

# Rust formatting

Write-Host "Checking formatting..."
cargo fmt --check

if ($LASTEXITCODE -ne 0) {
Write-Host ""
Write-Host "Formatting check failed."
Write-Host "Run: cargo fmt"
exit 1
}

# Clippy

Write-Host ""
Write-Host "Running clippy..."
cargo clippy -- -D warnings

if ($LASTEXITCODE -ne 0) {
Write-Host ""
Write-Host "Clippy failed."
exit 1
}

# Tests

Write-Host ""
Write-Host "Running tests..."
cargo test

if ($LASTEXITCODE -ne 0) {
Write-Host ""
Write-Host "Tests failed."
exit 1
}

Write-Host ""
Write-Host "All checks passed. Commit allowed."
exit 0

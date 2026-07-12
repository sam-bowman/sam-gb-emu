# Sam-GB-Emu Build Helper
#
# Builds the project and runs the emulator locally.

Write-Host "Sam-GB-Emu Build Helper"
Write-Host "======================="
Write-Host ""

Write-Host "Building project..."
Write-Host ""

cargo build

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Build failed."
    exit 1
}

Write-Host ""
Write-Host "Build successful."
Write-Host ""

Write-Host "Starting Sam-GB-Emu..."
Write-Host ""

cargo run
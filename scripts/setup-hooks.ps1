Write-Host "Configuring Sam-GB-Emu Git hooks..."

git config core.hooksPath .githooks

if ($LASTEXITCODE -eq 0) {
Write-Host "Git hooks configured successfully."
}
else {
Write-Host "Failed to configure Git hooks."
exit 1
}

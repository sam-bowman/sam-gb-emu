# Sam-GB-Emu Commit Helper

# Creates a feature branch if currently on main, then commits changes.

Write-Host "Sam-GB-Emu Commit Helper"
Write-Host "====================="
Write-Host ""

# Get current branch

$currentBranch = git branch --show-current

if ($currentBranch -eq "main") {
Write-Host "You are currently on main."
Write-Host "A new branch will be created."
Write-Host ""
}
else {
Write-Host "Current branch: $currentBranch"
Write-Host ""
}

Write-Host "Select commit type:"
Write-Host ""
Write-Host "1) feat     - New functionality"
Write-Host "2) fix      - Bug fix"
Write-Host "3) refactor - Code restructuring"
Write-Host "4) test     - Tests"
Write-Host "5) docs     - Documentation"
Write-Host "6) chore    - Maintenance"
Write-Host "7) perf     - Performance improvement"
Write-Host ""

$typeChoice = Read-Host "Choice"

switch ($typeChoice) {
"1" { $type = "feat" }
"2" { $type = "fix" }
"3" { $type = "refactor" }
"4" { $type = "test" }
"5" { $type = "docs" }
"6" { $type = "chore" }
"7" { $type = "perf" }
default {
Write-Host "Invalid choice"
exit 1
}
}

Write-Host ""
Write-Host "Suggested scopes:"
Write-Host "cpu, memory, cartridge, boot, ppu, timer, interrupt, joypad, apu, dma, debugger"
Write-Host ""

$scope = Read-Host "Scope"
$message = Read-Host "Description"

# Create branch if on main

if ($currentBranch -eq "main") {

```
$branchName = "$type/$scope-$($message.ToLower() -replace '[^a-z0-9]+','-')"

Write-Host ""
Write-Host "Creating branch:"
Write-Host $branchName

git checkout -b $branchName

if ($LASTEXITCODE -ne 0) {
    Write-Host "Failed to create branch."
    exit 1
}
```

}

$commitMessage = "$type($scope): $message"

Write-Host ""
Write-Host "Commit message:"
Write-Host $commitMessage
Write-Host ""

$confirm = Read-Host "Continue? (y/n)"

if ($confirm -eq "y") {

```
git add .

git commit -m $commitMessage

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "Committed successfully."
}
```

}
else {
Write-Host "Cancelled."
}

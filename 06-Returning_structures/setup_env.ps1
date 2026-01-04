# Setup environment variables for Assembly compilation on Windows
# This script sets up the paths for NASM, GCC, and other MinGW-w64 tools
# Usage: .\setup_env.ps1

Write-Host "Setting up environment variables for Assembly compilation..." -ForegroundColor Green
Write-Host ""

# Set up NASM path
$NASM_PATH = "C:\Nasm"

# Set up MinGW-w64 path
$MINGW_PATH = "C:\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32"

# Add to PATH so all tools are available
$env:PATH = "$NASM_PATH;$($MINGW_PATH)\bin;$env:PATH"

# Create an alias for mingw32-make so users can type 'make' instead
$mingw32MakePath = "$($MINGW_PATH)\bin\mingw32-make.exe"

if (Test-Path $mingw32MakePath) {
    Set-Alias -Name make -Value $mingw32MakePath -Scope Global -Force
    Write-Host "Alias created: 'make' -> 'mingw32-make'" -ForegroundColor Cyan
} else {
    Write-Host "Warning: mingw32-make.exe not found at $mingw32MakePath" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Environment setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Available tools:" -ForegroundColor Cyan
Write-Host "  - NASM: $NASM_PATH"
Write-Host "  - MinGW-w64: $MINGW_PATH"
Write-Host ""
Write-Host "You can now run: make" -ForegroundColor Yellow
Write-Host ""

@echo off
REM Setup environment variables for Assembly compilation on Windows
REM This script sets up the paths for NASM, GCC, and other MinGW-w64 tools
REM Usage: setup_env.bat

echo Setting up environment variables for Assembly compilation...

REM Set up NASM path
set NASM_PATH=C:\Nasm

REM Set up MinGW-w64 path
set MINGW_PATH=C:\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32

REM Add to PATH so all tools are available
set PATH=%NASM_PATH%;%MINGW_PATH%\bin;%PATH%

REM Create an alias for mingw32-make so users can type 'make' instead
doskey make=mingw32-make.exe $*

echo.
echo Environment setup complete!
echo.
echo Available tools:
echo - NASM: %NASM_PATH%
echo - MinGW-w64: %MINGW_PATH%
echo.
echo Alias created: 'make' ^-^> 'mingw32-make'
echo.
echo You can now run: make
echo.

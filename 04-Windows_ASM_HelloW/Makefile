# Makefile for building the Hello World assembly program using NASM on Windows
# and linking it with GCC.
# IMPORTANT: Before using this Makefile, run setup_env.bat to configure environment 
# variables setup_env.bat if you're in a COMMAND PROMPT session or 
#   . .\setup_env.ps1 if you're in a PowerShell session.
# If you're in a restricted environment in PowerShell please also set the execution policy
# accordingly via Set-ExecutionPolicy Unrestricted -Scope CurrentUser

assembly_file = file.asm
object_file = file.obj
executable = hello.exe
nasm_flags = -f win32
gcc_flags = -m32
nasm = nasm
gcc = gcc

.PHONY: all clean run

all: $(executable)

$(executable): $(object_file)
	$(gcc) $(gcc_flags) -o $@ $<

$(object_file): $(assembly_file)
	$(nasm) $(nasm_flags) -o $@ $<

clean:
	del $(object_file) $(executable)

run: $(executable)
	./$(executable)

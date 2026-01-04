# ============================================================================
# Makefile for mixing C and Assembly code on Windows
# ============================================================================
# IMPORTANT: Before using this Makefile, run setup_env.bat or setup_env.ps1
# to configure environment variables
#
# Usage:
#   make        - to build the program
#   make clean  - to remove the built files
#   make run    - to run the built program
# ============================================================================

# Source files - EDIT THESE to add new files
# ============================================================================
ASSEMBLY_SOURCES = file.asm
C_SOURCES = main.c

# Automatically generate object file names from source files
# ============================================================================
ASM_OBJECTS = $(ASSEMBLY_SOURCES:.asm=.obj)
C_OBJECTS = $(C_SOURCES:.c=.obj)
ALL_OBJECTS = $(ASM_OBJECTS) $(C_OBJECTS)

# Build configuration
# ============================================================================
EXECUTABLE = c_asm_mixed.exe

NASM = nasm
NASM_FLAGS = -f win32

GCC = gcc
GCC_FLAGS = -m32

# Phony targets, i.e. these recipes don't create files
# ============================================================================
.PHONY: all clean run help

# Default target
# ============================================================================
all: $(EXECUTABLE)

# Build the executable by linking all object files
# ============================================================================
$(EXECUTABLE): $(ALL_OBJECTS)
	$(GCC) $(GCC_FLAGS) -o $@ $^

# Compile assembly files to object files
# ============================================================================
%.obj: %.asm
	$(NASM) $(NASM_FLAGS) -o $@ $<

# Compile C files to object files
# ============================================================================
%.obj: %.c
	$(GCC) $(GCC_FLAGS) -c -o $@ $<

# Clean build artifacts
# ============================================================================
clean:
	del $(ALL_OBJECTS) $(EXECUTABLE)

# Run the built executable
# ============================================================================
run: $(EXECUTABLE)
	./$(EXECUTABLE)

# Display help information
# ============================================================================
help:
	@echo Available targets:
	@echo   make       - Build the executable
	@echo   make clean - Remove build artifacts
	@echo   make run   - Build and run the executable
	@echo   make help  - Display this help message
	@echo.
	@echo To add new source files, edit the ASSEMBLY_SOURCES and C_SOURCES variables

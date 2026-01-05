To observe how the assembler is generating code for passing structs into a function
we begin by creating a 30-byte char buf in a struct. Fill it in with some values 
(not a lot) and  then look at the generated assembly to observe how the struct
internals are referenced by indexing from the current stack address.

In order to generate the main_out.asm file which we observe the generated asm in
I've created a new recipe in make file named `main_out.asm` so to get it you can do
`make main_out.asm`
What you'll notice here is that the compiler actually copies all 30 bytes in the
struct to the memory area just before the stack pointer at the time of the call
because we're passing in by value, so even though we're just filling in the first 4
bytes at the beginning with "Hell" all other bytes still need to be copy and we see
this copy taking place as mov instructions from memory to reg eax and then back to the
destination memory address.
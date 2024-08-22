# C Calling Convention (Passing Parameters)

In this [video](https://www.youtube.com/watch?v=kjOcgG0FpNQ), we look at how to pass integer, pointer and floating point parameters to ASM. And where to place them so that C++ will read them as return values from a function. Basically, we use RCX, RDX, R8 and R9 for integer and pointer parameters; and XMM0 to XMM3 for floating point.

#include <stdio.h>

void ecall(int arg1, long arg2) {
    asm("ecall":::);
}

int main() {
    // Print `0xdeadbeef`
    ecall(1, 0xdeadbeef);
    // Exit
    ecall(10, 0);
    puts("Should not see this!");
    return 0;
}
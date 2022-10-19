#include <stdio.h>

int func() {
    return 0;
}

int main() {
    int res = 114514/func();
    puts("Should not see this.");
    return 0;
}
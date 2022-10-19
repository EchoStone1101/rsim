# include <stdio.h>

long mul(long a, long b) {
    return a * b;
}

int main() {
    for (int i = 0; i < 100; i++) {
        mul(i, i);
    }
    return 0;
}
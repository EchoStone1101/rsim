# include <stdio.h>

long div(long a, long b) {
    return a / b;
}

int main() {
    for (int i = 1; i <= 100; i++) {
        div(i, i);
    }
    return 0;
}
#include <stdio.h>

int foo(int x) {
	puts("I'm foo");
	return x * 4;
}

void bar() {
	puts("...and I'm bar");
}

int main() {
	if (foo(1) == 4) {
		bar();
	}
	return 0;
}
#include <stdio.h>

void foo() {
	puts("foo");
}

void bar() {
	puts("bar");
}

int seed() {
	return 5;
}

int main() {
	switch(seed()) {
		case 0: puts("0"); break;
		case 1: puts("1"); break;
		case 2: puts("3"); break;
		case 3: puts("4"); break;
		case 4: puts("0"); break;
		case 5: foo();
		case 6: bar();
		case 7: puts("7");
	}
	return 0;
}
#include <stdio.h>
#include <string.h>

int main() {
    char buf[10] = "123";
    char more[] = "456";
    strcat(buf, more);
    buf[0] = '0' + strlen(buf);

    if (strcmp(buf, "623456") == 0) {
        puts("success");
    }
    return 0;
}
#include <cstdio>

void foo() {
    int i;
    printf("%d ", i++);
}

 void bar() {
    int i = 2;
    //printf("%d ", i++);
}

int main() {
    int j;

    for (j = 1; j <= 10; j++) {
        foo();
        bar();
    }
    return 0;
}

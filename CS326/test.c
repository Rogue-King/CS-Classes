#include <cstdlib>
#include <cstdio>

typedef struct
{
    int a;
    char * b;
} Cell;

void AllocateCell(Cell **q) {
  *q = (Cell *) malloc(sizeof(Cell));
}

int main() {
  Cell *c;
  AllocateCell(&c);
  c->a = 1;
  free(c);
  return 0;
}



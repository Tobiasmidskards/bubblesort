#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "bubblesort.h"

int main() {
   int array[30], number, i;

   number = 11;

   srand(time(NULL));

   for (i = 0; i < number; i++)
      array[i] = rand() % 10;

   bubblesort(array, number);
   return 0;
}


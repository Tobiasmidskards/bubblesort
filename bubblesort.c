#include <stdio.h>
#include <stdlib.h>

int bubblesort();

int bubblesort(int array[], int number) {
   int x;
   int y;
   //int z;
   int temporary;

  //  printf("\nUnsorted array: [");
  //  for (z = 0; z < number; z++) {
  //     printf("%d, ", array[z]);
  //  }
  //  printf("]");

   for (x = 1; x < number; x++) {
      for (y = 0; y < number - 1; y++) {
         if (array[y] > array[y + 1]) {
            temporary = array[y];
            array[y] = array[y + 1];
            array[y + 1] = temporary;
         }
      }

      // printf("\nCycle: %d : [", x);
      // for (z = 0; z < number; z++) {
      //    printf("%d, ", array[z]);
      // }
      // printf("]");

   }
   //printf("\n");
   return 0;
}


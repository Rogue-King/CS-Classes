#include <stdio.h>
#include <stdio.h>
int loadHeightData(FILE* fromFILE, int column, char initals[], double d2Heights[][5]);
int main(){
    //file path declaration
    FILE* heightsInputFILE;
    //variable declaration
    int userInput;
    int columns2d = 5;
    int rows2d; 
    double userInput2dArray[5][5]; 
  //= {
    //                      {5,5,5,5,5},
    //};
    char initials[5], menu;
    //pointer declaration
    
    //fileInput
    heightsInputFILE = fopen("heights.txt", "a+");
    //condition to check if file can open
    if (heightsInputFILE == NULL)
    {
        printf("Can't open file\n");
    }
    else{
    rows2d = loadHeightData(heightsInputFILE, columns2d, initials, userInput2dArray);
    }
  printf("RT1: %d", rows2d);
}

int loadHeightData(FILE* fromFILE, int column, char initals[], double d2Heights[][5]) {
    int counter = 0, row = 0, rowI, colI;
    double height1,height2,height3,height4,height5; 
    char initialInput, ch;
    printf("  Initial: Height\n");
    printf("\n");
    while ((ch = fgetc(fromFILE)) != EOF){
      //for (rowI = 0; rowI < row; rowI++){
        //for (colI = 0; colI < column; colI ++){
          fscanf(fromFILE,"%c %lf %lf %lf %lf %lf", &initialInput, &height1, &height2, &height3 , &height4, &height5);
          printf("intial tester: %c\n", initialInput);
          printf("heightTester%d(%lf)\n", row, height1);
          initialInput = initals[row];  
          d2Heights[row][0] = height1;
          d2Heights[row][1] = height2;
          d2Heights[row][2] = height3;
          d2Heights[row][3] = height4;
          d2Heights[row][4] = height5;
          printf("intial tester: %s\n", initialInput);
        //}
      printf("heightTester%d(%lf)\n", row, height1);
      //}
      row++;
      printf("row: %d\n", row); 
    }
    printf("\n");
  //outputs rows in file 
  int i, j;
  //double i, j; 
  for(i=0; i< 5; i++) {
      for(j=0;j<5;j++) {
         printf("%d ", d2Heights[i][j]);
         if(j==5){
            printf("\n");
         }
      }
  }
  return row; 
}



//Project 5: Encoder
//Author: Miguel Muniz
//Date 03/6/2022

#include <stdio.h>

int main() {
  FILE* fp;
  FILE* dest_fp;
  char a, b, c, d, e;
  char output = "Test";
  int cipherV; 
  //Input
  fp = fopen("to_encode.txt", "r");
    if (fp == NULL){
    printf("Can't open file\n");
  } else {
    fscanf(fp,"%d", cipherV)==1;
    printf(cipherV);
    fscanf(fp,"%c%c%c%c%c", &a, &b, &c, &d, &e)==2;
    printf("%c%c%c%c%c",  a, b, c, d, e);
  }
  fclose(fp);
  //Output
  dest_fp = fopen("encoded.txt", "w");
    if (dest_fp == NULL){
      printf("Can't open file\n");
    }else {
       do {
      fprintf(dest_fp, "%c", output);
      }while(output != '\n');
    }
    fclose(dest_fp);
  return 0;
}
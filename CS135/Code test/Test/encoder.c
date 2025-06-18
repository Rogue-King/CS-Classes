//Project 5: Encoder
//Author: Miguel Muniz
//Date 03/6/2022
#include <stdio.h>
#include <stdbool.h>

int getLettersAndCipher(FILE *fp, char *a, char *b, char *c, char *d, char *e);
char encodeCharacter(int cipher, char letter);
char isCapital(char letter);
void writeEncodedMessage(FILE *dest_fp, char a, char b, char c, char d, char e);

int main()
{
    FILE *toEncodeFile;
    FILE *encodedFile;
    char aI, *aP = &aI, bI, *bP = &bI, cI, *cP = &cI, dI, *dP = &dI, eI, *eP = &eI;
    char wEMA, wEMB, wEMC, wEMD, wEME;
    int shiftValue;


    //Input
    toEncodeFile = fopen("to_encode.txt", "r");

    // Retreives shift value.
    shiftValue = getLettersAndCipher(toEncodeFile, aP, bP, cP, dP, eP);
    printf("Shift value: %i", shiftValue);


    if (toEncodeFile == NULL)
    {
        printf("Can't open file\n");
    }
    else
    {
        wEMA = encodeCharacter(shiftValue, *aP);
        wEMB = encodeCharacter(shiftValue, *bP);
        wEMC = encodeCharacter(shiftValue, *cP);
        wEMD = encodeCharacter(shiftValue, *dP);
        wEME = encodeCharacter(shiftValue, *eP);
    }
    fclose(toEncodeFile);
    //Output
    encodedFile = fopen("encoded.txt", "w");
    if (encodedFile == NULL)
    {
        printf("Can't open file\n");
    }
    else
    {
        writeEncodedMessage(encodedFile, wEMA, wEMB, wEMC, wEMD, wEME);
    }
    fclose(encodedFile);
    return 0;
}

int getLettersAndCipher(FILE *fp, char *a, char *b, char *c, char *d, char *e)
{
    int cipherV;
    fscanf(fp, "%d", &cipherV);
    fscanf(fp, "%c%c%c%c%c", a, b, c, d, e);
    printf("%c%c%c%c%c", *a, *b, *c, *d, *e);

    return cipherV;
}

//encodes inputed charcter based on cipher value
char encodeCharacter(int cipherV, char letter)
{
    char encoded;
    
    // If capital and goes past 'A'
    if (isCapital(letter) && letter - cipherV < 'A')
    {
        encoded = ('A' - (letter - cipherV)) + 'Z';
    }
    // Is capital
    else if (isCapital(letter))
    {
        encoded = (letter - cipherV);
    }
    // If lowercase and goes past 'a'
    else if (letter - cipherV < 'a')
    {
        encoded = ('a' - (letter - cipherV)) + 'z';
    }
    // Handles remaining lowercase
    else 
    {
        encoded = (letter - cipherV);
    }

    return encoded;
}

char isCapital(char letterC)
{
    if (letterC >= 'A' && letterC <= 'Z')
    {
        return true;
    }
    return false; 
}

void writeEncodedMessage(FILE *dest_fp, char a, char b, char c, char d, char e)
{
    fprintf(dest_fp, "%c", a);
    fprintf(dest_fp, "%c", b);
    fprintf(dest_fp, "%c", c);
    fprintf(dest_fp, "%c", d);
    fprintf(dest_fp, "%c", e);
}
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#define MAX_STRING_LENGTH 128

int main (int argc, char *argv[]){
  FILE *inputptr;
  inputptr = fopen(argv[1],"r");
  if(inputptr == NULL){
    printf("ERROR: cannot open file '%s'\n Exiting...\n", argv[1]);
    return 1;
  };

  char calibrationString [MAX_STRING_LENGTH] = {0};
  char firstDigit;
  char lastDigit;
  int calibrationNum;
  int sum = 0;

  //char stringNumbers[9] = {"one","two", "three", "four", "five", "six", "seven"}

  //while not at the end of the file
  while (!feof(inputptr)){
    firstDigit = 0;
    lastDigit = 0;
    calibrationNum = 0;
    memset(calibrationString, 0, MAX_STRING_LENGTH * sizeof(calibrationString[0]));
    //fetch a line
    fgets(calibrationString, MAX_STRING_LENGTH, inputptr);

    for (int i = 0; i < MAX_STRING_LENGTH; i++){
      if(isdigit(calibrationString[i])){
        lastDigit = calibrationString[i] - '0';
        if (firstDigit == 0){
          firstDigit = calibrationString[i] - '0';
        };
      };
    };
    calibrationNum = firstDigit*10+lastDigit;
    sum += calibrationNum;
};
  fclose(inputptr);
  printf("the sum was: %i\n", sum);

};

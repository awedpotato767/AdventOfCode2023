#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#define MAX_STRING_LENGTH 128


/*
 Function: IsWrittenDigit
 parameters:
  char string_in[] - a c-style string
              potentially containing written numbers (e.g "one")
  int i - the index in the string to start checking from.
 return vaules:
  0 if no digit is found
  1 - 9 if the corresponding digit is found.
 */

int isWrittenDigit(char* string_in, int i){
  char stringNumbers[9][5] = {"one", "two", "three", "four", "five",
                              "six", "seven", "eight", "nine"};
  int stringNumberLengths[9] = {3,3,5,4,4,3,5,5,4};

  if (i+4 > strlen(string_in)){
    return 0;
  };
  for(int x = 0; x < 9; x++){
    if (strncmp(&string_in[i],
                stringNumbers[x],
                stringNumberLengths[x])
          == 0){
      return x+1;
    };
  };
  return 0;
};


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
  int textDigit;
  int calibrationNum;
  int sum = 0;


  //while not at the end of the file
  while (!feof(inputptr)){
    firstDigit = 0;
    lastDigit = 0;
    calibrationNum = 0;
    memset(calibrationString, 0,
           MAX_STRING_LENGTH * sizeof(calibrationString[0]));
    //fetch a line
    fgets(calibrationString, MAX_STRING_LENGTH, inputptr);

    //for every character,
    //if it is a digit, make that the last character so far
    //if there has been no first character yet, make it the first.
    for (int i = 0; i < MAX_STRING_LENGTH; i++){
      textDigit = isWrittenDigit(calibrationString, i);
      if(textDigit){
        lastDigit = textDigit;
        if (firstDigit == 0){
          firstDigit = textDigit;
        };
      } else if(isdigit(calibrationString[i])){
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

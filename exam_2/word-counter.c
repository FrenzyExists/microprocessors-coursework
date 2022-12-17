// Word Count

#include<stdio.h>

int stringLength(char * word) {
    int count = 0;

    // Increment our counter until NULL TERMINATOR is found
    while (word[count] != '\0') {
      count++;
    }
    return (count);
}

int WordCount(char * word) {
    int count = 0, i , len;
    char lastC;
    len = stringLength(word);

    if(len > 0){
        lastC = word[0];
    }
    for(i=0; i<= len; i++ ){
        if((word[i]==' ' || word[i]=='\0') && lastC != ' ' && !(word[count]=='0' || word[count]=='1'|| word[count]=='2'||
        word[count]=='3'|| word[count]=='4'|| word[count]=='5'||
        word[count]=='6'|| word[count]=='7'|| word[count]=='8'|| word[count]=='9')){
            count++;
        }
    }
    lastC=word[i];
    return (count-1);
}

int NumberCount(char * word) {
    int count = 0;
    int numbersCount = 0;

    while (word[count] != '\0') {
        if(word[count]=='0' || word[count]=='1'|| word[count]=='2'||
        word[count]=='3'|| word[count]=='4'|| word[count]=='5'||
        word[count]=='6'|| word[count]=='7'|| word[count]=='8'|| word[count]=='9')
        numbersCount++;

      count++;
    }
    return (numbersCount);
}




int main() {
  int   index = 0;
  char  word[100];

  // Gets single word as input

  scanf("%[^\t\n]", word);
  
  printf("Enter a string of characters and press enter: Number count %d\n", WordCount(word));

  return (0);
}
#include<stdio.h>
#include<stdbool.h>


/**
 * Trick, we make an array that can hold most if not all ascii characters
 * check if the the ascii value exists in that slot
 * return false if so (cuz it means its not unique cuz it was already filled with something)
 * keep going, fill slots as you loop
 * return true at the end of the while loop
 * 
 *
 
*/
bool is_unique(char word[]) {
    int ascii[256];
    int i = 0;
    while (word[i] != '\0') {
        if (word[i] == ascii[(int)word[i]]) {
            return false;
        }
        ascii[(int)word[i]] = word[i];
        i++;
    }
    return true;
}

int main() {
    bool a = is_unique("Halp");
    printf("%d", a);
    return 0;
}
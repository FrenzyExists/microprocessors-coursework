#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static char roman_numeral[64];

static char *int_to_roman(int num)
{
    char *p = &roman_numeral[0];
    memset(roman_numeral, 0, sizeof(roman_numeral));

    while (num > 0) {
        // printf("%d", num);
        if (num >= 1000) {
            *p++ = 'M';
            num -= 1000;
        } else if (num >= 900) {
            *p++ = 'C';
            *p++ = 'M';
            num -= 900;
        } else if (num >= 500) {
            *p++ = 'D';
            num -= 500;  
        } else if (num >=400) {
            *p++ = 'C';
            *p++ = 'D';
            num -= 400;
        } else if (num >= 100) {
            *p++ = 'C';
            num -= 100;
        } else if (num >= 90) {
            *p++ = 'X';
            *p++ = 'C';
            num -= 90;
        } else if (num >= 50) {
            *p++ = 'L';
            num -= 50;            
        } else if (num >= 40) {
            *p++ = 'X';
            *p++ = 'L';
            num -= 40;
        } else if (num >=10) {
            *p++ = 'X';
            num -= 10;
        } else if (num >= 9) {
            *p++ = 'I';
            *p++ = 'X';
            num -= 9;
        } else if (num >= 5) {
            *p++ = 'V';
            num -= 5;
        } else if (num >= 4) {
            *p++ = 'I';
            *p++ = 'V';
            num -= 4;
        } else if (num >= 1) {
            *p++ = 'I';
            num -= 1;
        }
    }

    return roman_numeral;
}


void main(void)
 {
	int n; 
	
	printf("Enter a number: ");
	scanf("%d", &n);
	
	printf("Original integer: %d", n);
    printf("\nRoman number representation of the integer: %s", int_to_roman(n));
    return;
}
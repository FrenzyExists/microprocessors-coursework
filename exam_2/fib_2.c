/**
 * The Fibonacci sequence is a sequence where the next term is
 * the sum of the previous two terms. The first two terms of
 * the Fibonacci sequence are 0 followed by 1. This is the sequence
 * for the first 9 values:

          0, 1, 1, 2, 3, 5, 8, 13, 21

Write a program to do as follows:

Prompt the user for a number (from 1 to 20) Let's call that number
 "n" and then print the first n numbers of the Fibonacci sequence
*/
#include <stdio.h>

int fib(int n) {
    if (n == 0 || n == 1) {
        return n;
    } else {
        return (fib(n-1) + fib(n-2));
    }
}

void main() {

  int n;
    
    // get no. of terms from user
    scanf("%d", &n);
    printf("Enter n: ");
    // your code goes here
    //
    for (int i=0 ; i<n ; i++){
    if (i == n-1) {
        printf("%d ", fib(i));
    } else {
        printf("%d, ", fib(i));    
    }
    }
    return;
}
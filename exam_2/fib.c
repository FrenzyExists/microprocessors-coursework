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

int fib_tail(int n, int k, int e) {
    if (k != 0) {
        fib_tail(n + e, k-1, n);
        printf("%d ", n);
    } else {
        printf("%d ", n);
        return n;
    }
}

int fib(int n) {
    return fib_tail(0, n-1, 1);
}

void main() {

  int n;
    
    // get no. of terms from user
    printf("Enter n: ");
    scanf("%d", &n);
    
    // your code goes here
    fib(n);
    printf("\n");
    return;
}
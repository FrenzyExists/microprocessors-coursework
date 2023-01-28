#include <stdio.h>

int main() {
    float celcius, farenheit, kelvin;
    int lower = 0 ; int upper = 300 ; int step = 10;
    farenheit = lower;
    while (farenheit <= upper) {
        celcius =  5.0 / 9.0 * ( farenheit - 32.0 );
        kelvin = celcius + 273.15;
        printf("%3.0f %6.1f %9.1f\n", farenheit, celcius, kelvin);
        farenheit += step;
    }
}
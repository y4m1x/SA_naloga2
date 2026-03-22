#include <stdio.h>

// Makro piši z velikimi črkami, da se opaz razlika od spremenljivk!
#define STEVILO 17

int je_sodo(int x) {
    return x % 2 == 0;
}

int main() {
    int rez = je_sodo(STEVILO);

    #ifdef DEBUG
        printf("DEBUG\n");
    #else
        printf("NO DEBUG\n");
    #endif

    if(rez) {
        printf("%d je sodo stevilo.\n", STEVILO);
    } else {
        printf("%d ni sodo stevilo.\n", STEVILO);
    }

    return 0;
}
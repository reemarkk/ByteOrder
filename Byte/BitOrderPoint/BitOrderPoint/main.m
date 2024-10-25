#include <stdio.h>
void printHex(long long int number) {
    printf("0x%016llX\n", number);
}

long long int LittletoBig(long long int number){
  char * pn =(char *) &number;
    
    long long int result = 0;
    
    for(int i = 0; i < 8; i++){
        result |= (long long int)(pn[i]) << (56 - i * 8);
    }
    return result;
}

int main(void){
        long long int testNumber = 0x0102030405060708;
        printf("Original : ");
        printHex(testNumber);
    
    long long int result = LittletoBig(testNumber);
        printf("Converted : ");
        printHex(result);
    
        return 0;
    }


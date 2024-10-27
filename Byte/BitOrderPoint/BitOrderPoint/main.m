#include <stdio.h>
#include <stdlib.h>

long long int hton64(long long int a){
     char * ptr1 = (char *) &a; // Pointer to the original value
     long long int temp; 
     char * ptr2 = (char *) &temp;
     
     // Convert from little-endian to big-endian
     
     for( int i=0;i<8;i++){
          *(ptr2 + i)=*(ptr1 + 7 - i);}
          
     long long int result;   //return value
     char * ptr3=(char*) &result;

     // Assign the bytes
     for (int i=0;i<8;i++){
          *(ptr3+i)=*(ptr2+i);}
          
     return result;
}

void printHex(long long int number) {
    printf("0x%016llX\n", number);
}

int main() {
    long long int a = 0x123456789ABCDEF0; 
    long long int res = hton64(a);
    printf("ORIGINAL: ");
    printHex(a);
    printf("\n");
    printf("MODIFIED: ");
    printHex(res);
    return 0;
}

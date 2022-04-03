#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>


int main(){
int counter = 0;


printf(counter);
counter++ ;
printf("Making a Copy of Current Process : %d \n " , counter );



fork();




}c
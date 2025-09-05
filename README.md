#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main(){
  if(fork()==0){
    system("firefox");
    }
    else{
      system("chromium");
      printf("end");
      }
}

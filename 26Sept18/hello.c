#include<stdio.h>
enum { kb=1024,k=kb};
//Dummy file used for gdb learning
//prints helloworld

int add(int first, int second){
	printf("INSIDE Add function\n");
	return (first + second);
}
int main(){
	printf("Hello World!");
	printf("ADD return = %d  %d  %d\n",k,kb,add(1,2));
	return 0;
}


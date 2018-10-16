#include<stdio.h>

//Dummy file used for gdb learning
//prints helloworld

int add(int first, int second){
	printf("INSIDE Add function\n");
	return (first + second);
}
int main(){
	printf("Hello World!");
	printf("ADD return = %d\n",add(1,2));
	return 0;
}


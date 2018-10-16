#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

//Dummy file used for gdb learning
//prints helloworld

int add(int first, int second){
	printf("INSIDE Add function\n");
	return (first + second);
}
int main(){
	int a,b;
	printf("Hello World!\n mypid %d\n",getpid());
	printf("ADD return = %d\n",add(1,2));
	getchar();
	printf("enter first number\n: ");
	scanf("%d",&a);
	printf("enter second number\n: ");
	scanf("%d",&b);

	printf("ADD return %d + %d = %d\n",a,b,add(a,b));
	return 0;
}


#include<stdio.h>

int main(int argc,char * argv[]){
	printf("Hello World\nARGC = %d\n============================================================\n",argc);
	for(int i=1;i < argc;i++)
		printf(">> %s\n",argv[i]);	
	return 0;
}

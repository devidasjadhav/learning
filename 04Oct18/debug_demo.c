#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

//Dummy file used for gdb learning
//prints helloworld

int main(){
	int debug=0,bye=0,count =0;
	printf("Hello World!\n mypid %d\n",getpid());
	while(bye == 0){
		if(debug == 1)
			printf("Count = %d\n",count++);
		
		sleep(1);
	}
	return 0;
}


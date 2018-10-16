#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>

int main(){
	int ret_pid,my_pid, dbg=0,bye=0,count=0, nsec = 1;
	printf("Program PID: %d\n",getpid());
	printf("=====================================================================================================\n");
	
	ret_pid = fork();
	
	
	if(ret_pid > 0){
		my_pid = getpid();
		printf("Program PID: %d Child PID %d\n",getpid() , ret_pid );
		printf("=====================================================================================================\n");
		while(bye == 0){
			if(dbg == 1)
				printf("|| %d || Count - %d\n", my_pid,count);
			sleep(nsec);
			count++;
		}
		_exit(0);
	}

	if(ret_pid == 0){
		my_pid = getpid();
		printf("Program PID: %d PPID %d\n",getpid(),getppid());
		printf("=====================================================================================================\n");
		while(bye == 0){
			if(dbg == 1)
				printf("|| %d || Count - %d\n", my_pid,count);
			sleep(nsec);
			count++;
		}
		_exit(0);
	}
	if(ret_pid < 0 ){
		printf("Fork: %d Error creating fork \n",ret_pid);
		_exit(1);
	}
}

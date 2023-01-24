#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<string.h>
int main(int argc, char *argv[]){
if(argc < 3 || argc > 4 || (argc == 4 && strcmp(argv[1],"-s"))){
printf("Usage: ./a.out[-s] <org_file> <new_link> \n");
return 1;
}

if(argc == 4){
 if((symlink(argv[2],argv[3])) == -1)
 printf("Cannot create symbolic link\n");
 else
 printf("Symbolic link created\n");
}
else{
 if((link(argv[1],argv[2])) == -1)
 printf("Cannot create hard link\n");
 else
 printf("Hard link created\n");
}
return 0;
}

/*
gedit lnCommand.c
bmsce@bmsce-OptiPlex-3060:~/Desktop/1BM20CS188/lab-11$ gcc lnCommand.c 
bmsce@bmsce-OptiPlex-3060:~/Desktop/1BM20CS188/lab-11$ ./a.out env.c env2.c
Hard link created
bmsce@bmsce-OptiPlex-3060:~/Desktop/1BM20CS188/lab-11$ ls
a.out  env  env2.c  env.c  lnCommand.c
bmsce@bmsce-OptiPlex-3060:~/Desktop/1BM20CS188/lab-11$ ls -l
total 32
-rwxrwxr-x 1 bmsce bmsce 16816 Jan 24 12:35 a.out
-rw-rw-r-- 1 bmsce bmsce     0 Jan 24 12:18 env
-rw-rw-r-- 2 bmsce bmsce   197 Jan 24 12:28 env2.c
-rw-rw-r-- 2 bmsce bmsce   197 Jan 24 12:28 env.c
-rw-rw-r-- 1 bmsce bmsce   515 Jan 24 12:34 lnCommand.c
bmsce@bmsce-OptiPlex-3060:~/Desktop/1BM20CS188/lab-11$ ls -li
total 32
10235056 -rwxrwxr-x 1 bmsce bmsce 16816 Jan 24 12:35 a.out
10235127 -rw-rw-r-- 1 bmsce bmsce     0 Jan 24 12:18 env
10235142 -rw-rw-r-- 2 bmsce bmsce   197 Jan 24 12:28 env2.c
10235142 -rw-rw-r-- 2 bmsce bmsce   197 Jan 24 12:28 env.c
10234794 -rw-rw-r-- 1 bmsce bmsce   515 Jan 24 12:34 lnCommand.c





./a.out -s env.c envsoft.c
Symbolic link created
bmsce@bmsce-OptiPlex-3060:~/Desktop/1BM20CS188/lab-11$ ls -li
total 32
10235056 -rwxrwxr-x 1 bmsce bmsce 16816 Jan 24 12:36 a.out
10235127 -rw-rw-r-- 1 bmsce bmsce     0 Jan 24 12:18 env
10235142 -rw-rw-r-- 2 bmsce bmsce   197 Jan 24 12:28 env2.c
10235142 -rw-rw-r-- 2 bmsce bmsce   197 Jan 24 12:28 env.c
10235254 lrwxrwxrwx 1 bmsce bmsce     5 Jan 24 12:37 envsoft.c -> env.c
10235249 -rw-rw-r-- 1 bmsce bmsce  1499 Jan 24 12:36 lnCommand.c

*/

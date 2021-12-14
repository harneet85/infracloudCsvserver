harneet:~$ docker-compose
[sudo] password for harneet: 
sudo: docker-compose: command not found
harneet:~$ docker-compose -version
sudo: docker-compose: command not found
harneet:~$  sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
harneet:~$ 
harneet:~$ docker-compose -version
docker-compose version 1.29.2, build 5becea4c
harneet:~$ docker -version
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: unknown shorthand flag: 'e' in -ersion
harneet:~$ docker version
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Version:      3.2.3
API Version:  3.2.3
Go Version:   go1.15.7
Built:        Tue Jul 27 12:59:39 2021
OS/Arch:      linux/amd64
harneet:~$ owd
bash: owd: command not found...
pwd
harneet:~$ pwd
/home/harneet
harneet:~$ cd
harneet:~$ cd ^C
harneet:~$ mkdir infraclouds
harneet:~$ cd infraclouds/
harneet:infraclouds$ git
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           <command> [<args>]

These are common Git commands used in various situations:

start a working area (see also: git help tutorial)
   clone             Clone a repository into a new directory
   init              Create an empty Git repository or reinitialize an existing one

work on the current change (see also: git help everyday)
   add               Add file contents to the index
   mv                Move or rename a file, a directory, or a symlink
   restore           Restore working tree files
   rm                Remove files from the working tree and from the index
   sparse-checkout   Initialize and modify the sparse-checkout

examine the history and state (see also: git help revisions)
   bisect            Use binary search to find the commit that introduced a bug
   diff              Show changes between commits, commit and working tree, etc
   grep              Print lines matching a pattern
   log               Show commit logs
   show              Show various types of objects
   status            Show the working tree status

grow, mark and tweak your common history
   branch            List, create, or delete branches
   commit            Record changes to the repository
   merge             Join two or more development histories together
   rebase            Reapply commits on top of another base tip
   reset             Reset current HEAD to the specified state
   switch            Switch branches
   tag               Create, list, delete or verify a tag object signed with GPG

collaborate (see also: git help workflows)
   fetch             Download objects and refs from another repository
   pull              Fetch from and integrate with another repository or a local branch
   push              Update remote refs along with associated objects

'git help -a' and 'git help -g' list available subcommands and some
concept guides. See 'git help <command>' or 'git help <concept>'
to read about a specific subcommand or concept.
See 'git help git' for an overview of the system.
harneet:infraclouds$ 
harneet:infraclouds$ 
harneet:infraclouds$ 
harneet:infraclouds$ git clone https://github.com/infracloudio/csvserver
Cloning into 'csvserver'...
remote: Enumerating objects: 24, done.
remote: Counting objects: 100% (24/24), done.
remote: Compressing objects: 100% (14/14), done.
remote: Total 24 (delta 6), reused 24 (delta 6), pack-reused 0
Unpacking objects: 100% (24/24), 5.99 KiB | 383.00 KiB/s, done.
harneet:infraclouds$ ls -lrt
total 4
drwxrwxr-x. 4 harneet harneet 4096 Dec 14 21:45 csvserver
harneet:infraclouds$ cd csvserver/
harneet:csvserver$ ls -lrt
total 12
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 21:45 solution
harneet:csvserver$ cd solution/
harneet:solution$ ls -lrt
total 0
harneet:solution$ ls -lrta
total 8
-rw-rw-r--. 1 harneet harneet    0 Dec 14 21:45 .gitkeep
drwxrwxr-x. 4 harneet harneet 4096 Dec 14 21:45 ..
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 21:45 .
harneet:solution$ cat .gitkeep 
harneet:solution$ ls -lrt
total 0
harneet:solution$ 
harneet:solution$ ls -lrt
total 0
harneet:solution$ docker pull infracloudio/csvserver:latest
[sudo] password for harneet: 
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
✔ docker.io/infracloudio/csvserver:latest
Trying to pull docker.io/infracloudio/csvserver:latest...
Getting image source signatures
Copying blob c82d72e1bb76 done  
Copying blob ae43b40a9945 done  
Copying blob 7bb33bb2db38 done  
Copying config 8cb989ef80 done  
Writing manifest to image destination
Storing signatures
8cb989ef80b5708fc30467273a62e340f620838ac9e9b2e33a54160e2aad7271
harneet:solution$ docker image ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
REPOSITORY                        TAG         IMAGE ID      CREATED       SIZE
docker.io/infracloudio/csvserver  latest      8cb989ef80b5  9 months ago  245 MB
harneet:solution$ docker container run -d -name infracsvserver csvserver
[sudo] password for harneet: 
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: unknown shorthand flag: 'n' in -name
harneet:solution$ docker container run -d --name infracsvserver csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
cb7a406e1cb9092b7a8ed48ade55accbdeb5f472df14027b56de9e2149984049
harneet:solution$ docker container ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE       COMMAND     CREATED     STATUS      PORTS       NAMES
harneet:solution$ docker container logs
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: specify at least one container name or ID to log
harneet:solution$ docker container logs cb7a406e1cb9092b7a8ed48ade55accbdeb5f472df14027b56de9e2149984049
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
2021/12/14 16:27:13 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
harneet:solution$ mkdir csvserver
harneet:solution$ touch /csvserver/inputdata
touch: cannot touch '/csvserver/inputdata': No such file or directory
harneet:solution$ touch ./csvserver/inputdata
harneet:solution$ docker container run -d --name infracsvserver csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: error creating container storage: the container name "infracsvserver" is already in use by "cb7a406e1cb9092b7a8ed48ade55accbdeb5f472df14027b56de9e2149984049". You have to remove that container to be able to reuse that name.: that name is already in use
harneet:solution$ docker container ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE       COMMAND     CREATED     STATUS      PORTS       NAMES
harneet:solution$ docker container ls -a
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED             STATUS                         PORTS       NAMES
cb7a406e1cb9  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  About a minute ago  Exited (1) About a minute ago              infracsvserver
harneet:solution$ docker container start infracsvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
infracsvserver
harneet:solution$ docker container ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE       COMMAND     CREATED     STATUS      PORTS       NAMES
harneet:solution$ docker container ls -a
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED        STATUS                    PORTS       NAMES
cb7a406e1cb9  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  2 minutes ago  Exited (1) 8 seconds ago              infracsvserver
harneet:solution$ docker container logs cb7a406e1cb9092b7a8ed48ade55accbdeb5f472df14027b56de9e2149984049
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
2021/12/14 16:27:13 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
2021/12/14 16:29:24 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
harneet:solution$ mkdir /csvserver
mkdir: cannot create directory ‘/csvserver’: Permission denied
harneet:solution$ sudo mkdir /csvserver
harneet:solution$ touch ^C
harneet:solution$ sudo touch /csvserver/inputdata
harneet:solution$ docker container start infracsvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
infracsvserver
harneet:solution$ docker container ls -a
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED        STATUS                    PORTS       NAMES
cb7a406e1cb9  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  3 minutes ago  Exited (1) 4 seconds ago              infracsvserver
harneet:solution$ docker container logs cb7a406e1cb9092b7a8ed48ade55accbdeb5f472df14027b56de9e2149984049
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
2021/12/14 16:27:13 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
2021/12/14 16:29:24 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
2021/12/14 16:30:15 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
harneet:solution$ pwd
/home/harneet/infraclouds/csvserver/solution
harneet:solution$ touch ../i^C
harneet:solution$ ls
csvserver
harneet:solution$ rm csvserver/
rm: cannot remove 'csvserver/': Is a directory
harneet:solution$ rm -rf csvserver/
harneet:solution$ touch ../inputdata
harneet:solution$ docker container start infracsvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
infracsvserver
harneet:solution$ docker container logs cb7a406e1cb9092b7a8ed48ade55accbdeb5f472df14027b56de9e2149984049
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
2021/12/14 16:27:13 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
2021/12/14 16:29:24 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
2021/12/14 16:30:15 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
2021/12/14 16:31:16 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory
harneet:solution$ date
Tue Dec 14 22:01:25 IST 2021
harneet:solution$ docker container ls -a
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED        STATUS                     PORTS       NAMES
cb7a406e1cb9  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  4 minutes ago  Exited (1) 17 seconds ago              infracsvserver
harneet:solution$ ls -lrt /csvserver/inputdata
-rw-r--r--. 1 root root 0 Dec 14 22:00 /csvserver/inputdata
harneet:solution$ pwd
/home/harneet/infraclouds/csvserver/solution
harneet:solution$ vi gencsv.sh
harneet:solution$ 
harneet:solution$ 
harneet:solution$ chmod 770 gencsv.sh 
harneet:solution$ ./^C
harneet:solution$ pwd
/home/harneet/infraclouds/csvserver/solution
harneet:solution$ ./^C
harneet:solution$ ls -lrt ../
total 12
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
-rw-rw-r--. 1 harneet harneet    0 Dec 14 22:01 inputdata
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:17 solution
harneet:solution$ rm ../inputdata 
harneet:solution$ ./gencsv.sh 
is not set
harneet:solution$ ls -lrt ../
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:17 solution
-rw-rw-r--. 1 harneet harneet   89 Dec 14 22:18 inputdata
harneet:solution$ cat ../inputdata 
1, 12844
2, 1706
3, 9763
4, 26921
5, 15025
6, 17772
7, 17323
8, 16433
9, 25471
10, 10337
harneet:solution$ vi gencsv.sh 
harneet:solution$ ls -lrt ../
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
-rw-rw-r--. 1 harneet harneet   89 Dec 14 22:18 inputdata
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:18 solution
harneet:solution$ ./gencsv.sh 
no argument given, using default as 10
Empty file
harneet:solution$ ls -lrt ../
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:18 solution
-rw-rw-r--. 1 harneet harneet  177 Dec 14 22:18 inputdata
harneet:solution$ cat ../inputdata 
1, 12844
2, 1706
3, 9763
4, 26921
5, 15025
6, 17772
7, 17323
8, 16433
9, 25471
10, 10337
1, 9117
2, 10216
3, 2216
4, 23727
5, 5908
6, 13956
7, 21110
8, 22486
9, 16524
10, 24896
harneet:solution$ vi gencsv.sh 
harneet:solution$ ./gencsv.sh 
no argument given, using default as 10
Empty file
harneet:solution$ ls -lrt ../
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet   86 Dec 14 22:19 inputdata
harneet:solution$ cat ../inputdata 
1, 30406
2, 19067
3, 1095
4, 24983
5, 10621
6, 85
7, 25027
8, 24218
9, 1390
10, 10456
harneet:solution$ ./gencsv.sh 100
100 is set
Empty file
harneet:solution$ cat ../inputdata 
1, 9625
2, 1678
3, 1236
4, 12102
5, 13182
6, 17057
7, 23924
8, 28835
9, 1714
10, 8002
11, 19475
12, 10083
13, 28304
14, 20372
15, 13637
16, 29359
17, 18225
18, 4717
19, 14970
20, 11899
21, 13390
22, 8843
23, 31526
24, 9972
25, 5702
26, 3151
27, 27599
28, 10414
29, 2653
30, 22410
31, 10884
32, 25133
33, 7050
34, 14558
35, 15843
36, 21094
37, 19355
38, 27573
39, 25382
40, 532
41, 19521
42, 28959
43, 26961
44, 29422
45, 8535
46, 9220
47, 23308
48, 18948
49, 4327
50, 30778
51, 18193
52, 2950
53, 11731
54, 8545
55, 14081
56, 29462
57, 28551
58, 11857
59, 28946
60, 9410
61, 32095
62, 4786
63, 736
64, 3622
65, 7724
66, 11442
67, 32303
68, 3576
69, 13760
70, 11817
71, 20771
72, 1420
73, 19461
74, 12990
75, 31880
76, 26590
77, 23735
78, 5076
79, 28329
80, 30224
81, 12706
82, 18537
83, 3058
84, 5562
85, 1972
86, 27485
87, 32217
88, 31816
89, 10082
90, 13972
91, 28456
92, 1285
93, 12540
94, 4737
95, 31409
96, 6962
97, 14280
98, 27625
99, 12296
100, 3144
harneet:solution$ ls -lrt
total 4
-rwxrwx---. 1 harneet harneet 407 Dec 14 22:19 gencsv.sh
harneet:solution$ cd ..
harneet:csvserver$ ls
inputdata  README.md  solution
harneet:csvserver$ cp -rp ../csvserver /tmp/
harneet:csvserver$ ls -lrt
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
harneet:csvserver$ git remote add origin https://github.com/harneet85/infracloudCsvserver.git
fatal: remote origin already exists.
harneet:csvserver$ git branch -M main
harneet:csvserver$ git push -u origin main
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/infracloudio/csvserver/'
harneet:csvserver$ git push -u origin main
remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.
remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.
fatal: Authentication failed for 'https://github.com/infracloudio/csvserver/'
harneet:csvserver$ ^C
harneet:csvserver$ git push -u origin main
remote: Permission to infracloudio/csvserver.git denied to harneet85.
fatal: unable to access 'https://github.com/infracloudio/csvserver/': The requested URL returned error: 403
harneet:csvserver$ git remote add origin https://github.com/harneet85/infracloudCsvserver.git
fatal: remote origin already exists.
harneet:csvserver$ git push -u origin main
remote: Permission to infracloudio/csvserver.git denied to harneet85.
fatal: unable to access 'https://github.com/infracloudio/csvserver/': The requested URL returned error: 403
harneet:csvserver$ ls -lrta
total 28
drwxrwxr-x. 3 harneet harneet 4096 Dec 14 21:45 ..
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 4 harneet harneet 4096 Dec 14 22:18 .
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
drwxrwxr-x. 8 harneet harneet 4096 Dec 14 22:22 .git
harneet:csvserver$ cat .git
cat: .git: Is a directory
harneet:csvserver$ cd .git
harneet:.git$ ls -rlta
total 52
drwxrwxr-x.  2 harneet harneet 4096 Dec 14 21:45 info
-rw-rw-r--.  1 harneet harneet   73 Dec 14 21:45 description
drwxrwxr-x.  2 harneet harneet 4096 Dec 14 21:45 branches
drwxrwxr-x.  2 harneet harneet 4096 Dec 14 21:45 hooks
drwxrwxr-x. 25 harneet harneet 4096 Dec 14 21:45 objects
drwxrwxr-x.  5 harneet harneet 4096 Dec 14 21:45 refs
-rw-rw-r--.  1 harneet harneet  114 Dec 14 21:45 packed-refs
drwxrwxr-x.  3 harneet harneet 4096 Dec 14 21:45 logs
-rw-rw-r--.  1 harneet harneet  250 Dec 14 21:45 index
drwxrwxr-x.  4 harneet harneet 4096 Dec 14 22:18 ..
-rw-rw-r--.  1 harneet harneet   21 Dec 14 22:22 HEAD
-rw-rw-r--.  1 harneet harneet  264 Dec 14 22:22 config
drwxrwxr-x.  8 harneet harneet 4096 Dec 14 22:22 .
harneet:.git$ pwd
/home/harneet/infraclouds/csvserver/.git
harneet:.git$ cd ../
harneet:csvserver$ ls -lrt
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
harneet:csvserver$ rm -rf .git
harneet:csvserver$ ls -rlt
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
harneet:csvserver$ git remote add origin https://github.com/harneet85/infracloudCsvserver.git
fatal: not a git repository (or any of the parent directories): .git
harneet:csvserver$ mkdir .git
harneet:csvserver$ git remote add origin https://github.com/harneet85/infracloudCsvserver.git
fatal: not a git repository (or any of the parent directories): .git
harneet:csvserver$ git clone https://github.com/harneet85/infracloudCsvserver.git
Cloning into 'infracloudCsvserver'...
warning: You appear to have cloned an empty repository.
harneet:csvserver$ ls -lrt
total 20
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
drwxrwxr-x. 3 harneet harneet 4096 Dec 14 22:30 infracloudCsvserver
harneet:csvserver$ ls -rlta
total 32
drwxrwxr-x. 3 harneet harneet 4096 Dec 14 21:45 ..
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:29 .git
drwxrwxr-x. 5 harneet harneet 4096 Dec 14 22:30 .
drwxrwxr-x. 3 harneet harneet 4096 Dec 14 22:30 infracloudCsvserver
harneet:csvserver$ mv README.md ^C
harneet:csvserver$ mv README.md infracloudCsvserver/^C
harneet:csvserver$ mv README.md infracloudCsvserver/
harneet:csvserver$ mv solution infracloudCsvserver/
harneet:csvserver$ mv inputdata infracloudCsvserver/
harneet:csvserver$ cd infracloudCsvserver/
harneet:infracloudCsvserver$ ls -rlt
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
harneet:infracloudCsvserver$ ls -lrta
total 28
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
drwxrwxr-x. 7 harneet harneet 4096 Dec 14 22:30 .git
drwxrwxr-x. 4 harneet harneet 4096 Dec 14 22:31 ..
drwxrwxr-x. 4 harneet harneet 4096 Dec 14 22:31 .
harneet:infracloudCsvserver$ git branch -M main
error: refname refs/heads/master not found
fatal: Branch rename failed
harneet:infracloudCsvserver$ git remote add origin https://github.com/harneet85/infracloudCsvserver.git
fatal: remote origin already exists.
harneet:infracloudCsvserver$ git push
error: src refspec refs/heads/master does not match any
error: failed to push some refs to 'https://github.com/harneet85/infracloudCsvserver.git'
harneet:infracloudCsvserver$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	README.md
	inputdata
	solution/

nothing added to commit but untracked files present (use "git add" to track)
harneet:infracloudCsvserver$ git add *
harneet:infracloudCsvserver$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
	new file:   README.md
	new file:   inputdata
	new file:   solution/.gitkeep
	new file:   solution/gencsv.sh

harneet:infracloudCsvserver$ git -m "updated" commit
unknown option: -m
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           <command> [<args>]
harneet:infracloudCsvserver$ git  commit -m "updated"
[master (root-commit) e155711] updated
 Committer: honey <harneet@kd-b82539cc-2831-11b2-a85c-ef4b81aa595f.ibm.com>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 4 files changed, 249 insertions(+)
 create mode 100644 README.md
 create mode 100644 inputdata
 create mode 100644 solution/.gitkeep
 create mode 100755 solution/gencsv.sh
harneet:infracloudCsvserver$ ls -lrt
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
harneet:infracloudCsvserver$ cd solution/
harneet:solution$ ls -lrt
total 4
-rwxrwx---. 1 harneet harneet 407 Dec 14 22:19 gencsv.sh
harneet:solution$ docker container ls -a
[sudo] password for harneet: 
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED         STATUS                     PORTS       NAMES
cb7a406e1cb9  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  37 minutes ago  Exited (1) 33 minutes ago              infracsvserver
harneet:solution$ docker container run -v ../inputdata:/csvserver/inputdata  infracsvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.

Error: ^C
harneet:solution$ mkdir /csvserver^C
harneet:solution$ docker container prune
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
WARNING! This will remove all non running containers.
Are you sure you want to continue? [y/N] y
cb7a406e1cb9092b7a8ed48ade55accbdeb5f472df14027b56de9e2149984049
harneet:solution$ docker images ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
REPOSITORY  TAG         IMAGE ID    CREATED     SIZE
harneet:solution$ docker images ls -a
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
REPOSITORY  TAG         IMAGE ID    CREATED     SIZE
harneet:solution$ docker pull infracloudio/csvserver:latest
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Trying to pull docker.io/infracloudio/csvserver:latest...
Getting image source signatures
Copying blob ae43b40a9945 skipped: already exists  
Copying blob c82d72e1bb76 skipped: already exists  
Copying blob 7bb33bb2db38 [--------------------------------------] 0.0b / 0.0b
Copying config 8cb989ef80 done  
Writing manifest to image destination
Storing signatures
8cb989ef80b5708fc30467273a62e340f620838ac9e9b2e33a54160e2aad7271
harneet:solution$ docker images ls -a
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
REPOSITORY  TAG         IMAGE ID    CREATED     SIZE
harneet:solution$ docker images ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
REPOSITORY  TAG         IMAGE ID    CREATED     SIZE
harneet:solution$ docker image ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
REPOSITORY                        TAG         IMAGE ID      CREATED       SIZE
docker.io/infracloudio/csvserver  latest      8cb989ef80b5  9 months ago  245 MB
harneet:solution$ 
harneet:solution$ 
harneet:solution$ 
harneet:solution$ 
harneet:solution$ ls -rlt^C
harneet:solution$ pwd
/home/harneet/infraclouds/csvserver/infracloudCsvserver/solution
harneet:solution$ ls -lrt
total 4
-rwxrwx---. 1 harneet harneet 407 Dec 14 22:19 gencsv.sh
harneet:solution$ cd ..
harneet:infracloudCsvserver$ docker container -v ../inputdata:/csvserver/inputdata -d start --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: unknown shorthand flag: 'v' in -v
harneet:infracloudCsvserver$ docker run -v ../inputdata:/csvserver/inputdata -d start --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.

Error: ^C
harneet:infracloudCsvserver$ docker run -v ../inputdata:/csvserver/inputdata -d  --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: statfs /home/harneet/infraclouds/csvserver/inputdata: no such file or directory
harneet:infracloudCsvserver$ ls -lrt
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
harneet:infracloudCsvserver$ docker run -v ./inputdata:/csvserver/inputdata -d  --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
c9835600cb46ddaa938e6cc7da8908352f4b4e932bcd29df863580469fc9fd74
harneet:infracloudCsvserver$ docker container ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE       COMMAND     CREATED     STATUS      PORTS       NAMES
harneet:infracloudCsvserver$ docker container ls -a
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED        STATUS                    PORTS       NAMES
c9835600cb46  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  5 seconds ago  Exited (1) 5 seconds ago              infracsvserver
harneet:infracloudCsvserver$ docker container logs
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: specify at least one container name or ID to log
harneet:infracloudCsvserver$ docker container log
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: unrecognized command `podman container log`
Try 'podman container --help' for more information.
harneet:infracloudCsvserver$ docker container logs c9835600cb46
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
2021/12/14 17:15:22 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: permission denied
harneet:infracloudCsvserver$ ls -lrt
total 16
-rw-rw-r--. 1 harneet harneet 7526 Dec 14 21:45 README.md
drwxrwxr-x. 2 harneet harneet 4096 Dec 14 22:19 solution
-rw-rw-r--. 1 harneet harneet  957 Dec 14 22:19 inputdata
harneet:infracloudCsvserver$ chmod 777 inputdata 
harneet:infracloudCsvserver$ docker run -v ./inputdata:/csvserver/inputdata -d  --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: error creating container storage: the container name "infracsvserver" is already in use by "c9835600cb46ddaa938e6cc7da8908352f4b4e932bcd29df863580469fc9fd74". You have to remove that container to be able to reuse that name.: that name is already in use
harneet:infracloudCsvserver$ docker start infracsvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
infracsvserver
harneet:infracloudCsvserver$ docker container logs c9835600cb46
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
2021/12/14 17:15:22 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: permission denied
2021/12/14 17:17:25 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: permission denied
harneet:infracloudCsvserver$ docker start infracsvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
infracsvserver
harneet:infracloudCsvserver$ docker container logs c9835600cb46
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
2021/12/14 17:15:22 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: permission denied
2021/12/14 17:17:25 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: permission denied
2021/12/14 17:17:33 error while reading the file "/csvserver/inputdata": open /csvserver/inputdata: permission denied
harneet:infracloudCsvserver$ docker container prune
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
WARNING! This will remove all non running containers.
Are you sure you want to continue? [y/N] y
c9835600cb46ddaa938e6cc7da8908352f4b4e932bcd29df863580469fc9fd74
harneet:infracloudCsvserver$ docker run -v ./inputdata:/csvserver/inputdata:z -d  --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
c09d3b085f9099268183981f973365d5be722c5f746c61de32fdc3a52e3565d2
harneet:infracloudCsvserver$ docker container
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: missing command 'podman container COMMAND'
Try 'podman container --help' for more information.
harneet:infracloudCsvserver$ docker container ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED         STATUS             PORTS       NAMES
c09d3b085f90  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  11 seconds ago  Up 11 seconds ago              infracsvserver
harneet:infracloudCsvserver$ 

harneet:infracloudCsvserver$ pwd
/home/harneet/infraclouds/csvserver/infracloudCsvserver
harneet:infracloudCsvserver$ docker container exec -it infracsvserver bash
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
[root@c09d3b085f90 csvserver]# pwd
/csvserver
[root@c09d3b085f90 csvserver]# ps -ef|less       
[root@c09d3b085f90 csvserver]# netstat -anlp| grep -i listen
tcp6       0      0 :::9300                 :::*                    LISTEN      1/csvserver         
[root@c09d3b085f90 csvserver]# exit
harneet:infracloudCsvserver$ docker container ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED        STATUS            PORTS       NAMES
c09d3b085f90  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  5 minutes ago  Up 5 minutes ago              infracsvserver
harneet:infracloudCsvserver$ docker container stop infracsvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
infracsvserver
harneet:infracloudCsvserver$ docker container ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE       COMMAND     CREATED     STATUS      PORTS       NAMES
harneet:infracloudCsvserver$ docker run -v ./inputdata:/csvserver/inputdata:z -d -p 9393:9300 -e CSVSERVER_BORDER='Orange' --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: error creating container storage: the container name "infracsvserver" is already in use by "c09d3b085f9099268183981f973365d5be722c5f746c61de32fdc3a52e3565d2". You have to remove that container to be able to reuse that name.: that name is already in use
harneet:infracloudCsvserver$ docker start -v ./inputdata:/csvserver/inputdata:z -d -p 9393:9300 -e CSVSERVER_BORDER='Orange' --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: unknown shorthand flag: 'v' in -v
harneet:infracloudCsvserver$ docker prune 
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: unrecognized command `podman prune`
Try 'podman --help' for more information.
harneet:infracloudCsvserver$ docker container prune 
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
WARNING! This will remove all non running containers.
Are you sure you want to continue? [y/N] y
c09d3b085f9099268183981f973365d5be722c5f746c61de32fdc3a52e3565d2
harneet:infracloudCsvserver$ docker start -v ./inputdata:/csvserver/inputdata:z -d -p 9393:9300 -e CSVSERVER_BORDER='Orange' --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
Error: unknown shorthand flag: 'v' in -v
harneet:infracloudCsvserver$ docker run -v ./inputdata:/csvserver/inputdata:z -d -p 9393:9300 -e CSVSERVER_BORDER='Orange' --name infracsvserver docker.io/infracloudio/csvserver
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
5232a932f6ad06dba60689a07198bbeda816d29351f3a4b896baab83584f929f
harneet:infracloudCsvserver$ docker container ls
Emulate Docker CLI using podman. Create /etc/containers/nodocker to quiet msg.
CONTAINER ID  IMAGE                                    COMMAND               CREATED        STATUS            PORTS                   NAMES
5232a932f6ad  docker.io/infracloudio/csvserver:latest  /csvserver/csvser...  6 seconds ago  Up 6 seconds ago  0.0.0.0:9393->9300/tcp  infracsvserver
harneet:infracloudCsvserver$ git status
On branch master
Your branch is based on 'origin/master', but the upstream is gone.
  (use "git branch --unset-upstream" to fixup)

nothing to commit, working tree clean
harneet:infracloudCsvserver$ 


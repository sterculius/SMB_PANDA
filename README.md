# SMB_PANDA
verry fast random smb target discovery (no input needed, just run and discover targets)

      ...$$$$$$\................$$$$$$$\............................................$$\...........    
      ..$$..__$$\...............$$..__$$\...........................................$$.|..........
      ..$$./..\__|$$$$$$\$$$$\..$$.|..$$.|.......$$$$$$\...$$$$$$\..$$$$$$$\...$$$$$$$.|.$$$$$$\..
      ..\$$$$$$\..$$.._$$.._$$\.$$$$$$$\.|......$$..__$$\..\____$$\.$$..__$$\.$$..__$$.|.\____$$\.
      ...\____$$\.$$./.$$./.$$.|$$..__$$\.......$$./..$$.|.$$$$$$$.|$$.|..$$.|$$./..$$.|.$$$$$$$.|
      ..$$\...$$.|$$.|.$$.|.$$.|$$.|..$$.|......$$.|..$$.|$$..__$$.|$$.|..$$.|$$.|..$$.|$$..__$$.|
      ..\$$$$$$..|$$.|.$$.|.$$.|$$$$$$$..|......$$$$$$$..|\$$$$$$$.|$$.|..$$.|\$$$$$$$.|\$$$$$$$.|
      ...\______/.\__|.\__|.\__|\_______/.......$$..____/..\_______|\__|..\__|.\_______|.\_______|
      ..........................................$$.|..............................................
      ..........................................$$.|..............................................
      ..........................................\__|..............................................

the fastest way to find eternalblue targets on kali linux

(probably gonna have a shit tone of bugs and problems cause it took me less than an hour to make)

run it with python and it automaticly generates a random range to scan with masscan
once it runs masscan it uses a smb exploit tester on al the ip addreses that have smb open

uses multiple other github tools

=========================requirements============================


!!!!!!!!!!!!!!!!!!!!!!!!!just run the setup.sh and it will install everything you need!!!!!!!!!!!!!!!!!!!!!!!
      
      
      
manual instalation ( optional )
      
       1: masscan

       all ya got to do is install the kali repository in the /etc/apt/sources.list file

      'apt update' 

      'apt install masscan'

       2: python

       you should already have this installed on kali but if you dont just fucking google it people

       3: golang

       'apt install golang'

=============================how to use it=================================

python main.py

then sit back relax and watch the targets roll in

=============================how it works================================

it basicaly uses masscan to find ip addreses that have port 445 open

then filters the output so that it only shows the open ip address line by line

then adds 'go run ms17-010.go' before each ip address

then it saves the output as a .sh file

then it runs the .sh file whitch will scan those ip addresses to se if it has a vulnerable version of smb

then it will tell you what is fulnerable and what has a safe version of smb

(if you dont like somthing or find a bug. edit it your godam self or delete it)

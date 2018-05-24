#source: pr20253-1.s
#as: --x32
#ld: -pie -melf32_x86_64 --hash-style=sysv -z max-page-size=0x200000 -z noseparate-code
#objdump: -dw
#notarget: x86_64-*-nacl*

.*: +file format .*


Disassembly of section .text:

0+120 <foo>:
 +[a-f0-9]+:	c3                   	retq   

0+121 <bar>:
 +[a-f0-9]+:	c3                   	retq   

0+122 <_start>:
 +[a-f0-9]+:	ff 15 b0 00 20 00    	callq  \*0x2000b0\(%rip\)        # 2001d8 <.got>
 +[a-f0-9]+:	ff 25 b2 00 20 00    	jmpq   \*0x2000b2\(%rip\)        # 2001e0 <.got\+0x8>
 +[a-f0-9]+:	48 c7 05 a7 00 20 00 00 00 00 00 	movq   \$0x0,0x2000a7\(%rip\)        # 2001e0 <.got\+0x8>
 +[a-f0-9]+:	48 83 3d 97 00 20 00 00 	cmpq   \$0x0,0x200097\(%rip\)        # 2001d8 <.got>
 +[a-f0-9]+:	48 3b 0d 90 00 20 00 	cmp    0x200090\(%rip\),%rcx        # 2001d8 <.got>
 +[a-f0-9]+:	48 3b 0d 91 00 20 00 	cmp    0x200091\(%rip\),%rcx        # 2001e0 <.got\+0x8>
#pass

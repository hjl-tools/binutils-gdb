#source: pr20253-1.s
#as: --64
#ld: -pie -melf_x86_64 --hash-style=sysv -z max-page-size=0x200000 -z noseparate-code
#objdump: -dw
#notarget: x86_64-*-nacl*

.*: +file format .*


Disassembly of section .text:

0+1c8 <foo>:
 +[a-f0-9]+:	c3                   	retq   

0+1c9 <bar>:
 +[a-f0-9]+:	c3                   	retq   

0+1ca <_start>:
 +[a-f0-9]+:	ff 15 38 01 20 00    	callq  \*0x200138\(%rip\)        # 200308 <.got>
 +[a-f0-9]+:	ff 25 3a 01 20 00    	jmpq   \*0x20013a\(%rip\)        # 200310 <.got\+0x8>
 +[a-f0-9]+:	48 c7 05 2f 01 20 00 00 00 00 00 	movq   \$0x0,0x20012f\(%rip\)        # 200310 <.got\+0x8>
 +[a-f0-9]+:	48 83 3d 1f 01 20 00 00 	cmpq   \$0x0,0x20011f\(%rip\)        # 200308 <.got>
 +[a-f0-9]+:	48 3b 0d 18 01 20 00 	cmp    0x200118\(%rip\),%rcx        # 200308 <.got>
 +[a-f0-9]+:	48 3b 0d 19 01 20 00 	cmp    0x200119\(%rip\),%rcx        # 200310 <.got\+0x8>
#pass

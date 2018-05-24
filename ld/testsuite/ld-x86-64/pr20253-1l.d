#source: pr20253-1.s
#as: --x32
#ld: -shared -melf32_x86_64 --hash-style=sysv -z max-page-size=0x200000 -z noseparate-code
#objdump: -dw
#notarget: x86_64-*-nacl*

.*: +file format .*


Disassembly of section .text:

0+158 <foo>:
 +[a-f0-9]+:	c3                   	retq   

0+159 <bar>:
 +[a-f0-9]+:	c3                   	retq   

0+15a <_start>:
 +[a-f0-9]+:	ff 15 a0 00 20 00    	callq  \*0x2000a0\(%rip\)        # 200200 <foo\+0x2000a8>
 +[a-f0-9]+:	ff 25 a2 00 20 00    	jmpq   \*0x2000a2\(%rip\)        # 200208 <.got\+0x8>
 +[a-f0-9]+:	48 c7 05 97 00 20 00 00 00 00 00 	movq   \$0x0,0x200097\(%rip\)        # 200208 <.got\+0x8>
 +[a-f0-9]+:	48 83 3d 87 00 20 00 00 	cmpq   \$0x0,0x200087\(%rip\)        # 200200 <foo\+0x2000a8>
 +[a-f0-9]+:	48 3b 0d 80 00 20 00 	cmp    0x200080\(%rip\),%rcx        # 200200 <foo\+0x2000a8>
 +[a-f0-9]+:	48 3b 0d 81 00 20 00 	cmp    0x200081\(%rip\),%rcx        # 200208 <.got\+0x8>
#pass

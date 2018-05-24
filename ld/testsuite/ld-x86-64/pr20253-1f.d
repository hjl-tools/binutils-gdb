#source: pr20253-1.s
#as: --64
#ld: -shared -melf_x86_64 --hash-style=sysv -z max-page-size=0x200000 -z noseparate-code
#objdump: -dw
#notarget: x86_64-*-nacl*

.*: +file format .*


Disassembly of section .text:

0+1f8 <foo>:
 +[a-f0-9]+:	c3                   	retq   

0+1f9 <bar>:
 +[a-f0-9]+:	c3                   	retq   

0+1fa <_start>:
 +[a-f0-9]+:	ff 15 18 01 20 00    	callq  \*0x200118\(%rip\)        # 200318 <foo\+0x200120>
 +[a-f0-9]+:	ff 25 1a 01 20 00    	jmpq   \*0x20011a\(%rip\)        # 200320 <.got\+0x8>
 +[a-f0-9]+:	48 c7 05 0f 01 20 00 00 00 00 00 	movq   \$0x0,0x20010f\(%rip\)        # 200320 <.got\+0x8>
 +[a-f0-9]+:	48 83 3d ff 00 20 00 00 	cmpq   \$0x0,0x2000ff\(%rip\)        # 200318 <foo\+0x200120>
 +[a-f0-9]+:	48 3b 0d f8 00 20 00 	cmp    0x2000f8\(%rip\),%rcx        # 200318 <foo\+0x200120>
 +[a-f0-9]+:	48 3b 0d f9 00 20 00 	cmp    0x2000f9\(%rip\),%rcx        # 200320 <.got\+0x8>
#pass

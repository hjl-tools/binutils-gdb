#source: x86-64-seg-none.s
#as: -moperand-check=none -I$srcdir/$subdir
#objdump: -dw
#name: x86-64 (ILP32) segment check (none)

.*: +file format .*

Disassembly of section .text:

0+ <_start>:
 +[a-f0-9]+:	64 67 8b 00          	mov    %fs:\(%eax\),%eax
 +[a-f0-9]+:	64 67 8b 04 05 00 00 00 00 	mov    %fs:0x0\(,%eax,1\),%eax
 +[a-f0-9]+:	65 67 8b 04 25 00 00 00 00 	mov    %gs:0x0\(,%eiz,1\),%eax
 +[a-f0-9]+:	65 67 8b 05 00 00 00 00 	mov    %gs:0x0\(%eip\),%eax        # [a-f0-9]+ <_start\+0x[a-f0-9]+>
 +[a-f0-9]+:	c4 22 1d 92 1c 3d 0c 00 00 00 	vgatherdps %ymm12,0xc\(,%ymm15,1\),%ymm11
#pass

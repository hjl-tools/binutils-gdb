#source: x86-64-seg-inval.s
#as: -moperand-check=warning
#warning_output: x86-64-seg-warn.e
#objdump: -dw
#name: x86-64 (ILP32) segment check (warning)

.*: +file format .*

Disassembly of section .text:

0+ <_start>:
 +[a-f0-9]+:	64 67 8b 00          	mov    %fs:\(%eax\),%eax
 +[a-f0-9]+:	64 67 8b 04 05 00 00 00 00 	mov    %fs:0x0\(,%eax,1\),%eax
 +[a-f0-9]+:	65 67 8b 04 25 00 00 00 00 	mov    %gs:0x0\(,%eiz,1\),%eax
 +[a-f0-9]+:	65 67 8b 05 00 00 00 00 	mov    %gs:0x0\(%eip\),%eax        # [a-f0-9]+ <_start\+0x[a-f0-9]+>
#pass

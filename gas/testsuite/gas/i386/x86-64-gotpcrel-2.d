#as: -mrelax-relocations=no
#objdump: -dwr

.*: +file format .*


Disassembly of section .text:

0+ <foo>:
 +[a-f0-9]+:	48 8b 05 00 00 00 00 	mov    0x0\(%rip\),%rax        # 7 <foo\+0x7>	3: R_X86_64_GOTPCREL	foo-0x4
 +[a-f0-9]+:	48 c7 c0 00 00 00 00 	mov    \$0x0,%rax	a: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	48 8b 04 25 00 00 00 00 	mov    0x0,%rax	12: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	48 8b 05 00 00 00 00 	mov    0x0\(%rip\),%rax        # 1d <foo\+0x1d>	19: R_X86_64_THUNK_GOTPCRELX	foo-0x4
 +[a-f0-9]+:	8b 05 00 00 00 00    	mov    0x0\(%rip\),%eax        # 23 <foo\+0x23>	1f: R_X86_64_GOTPCRELX	foo-0x4
 +[a-f0-9]+:	48 8b 81 00 00 00 00 	mov    0x0\(%rcx\),%rax	26: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	ff 15 00 00 00 00    	callq  \*0x0\(%rip\)        # 30 <foo\+0x30>	2c: R_X86_64_GOTPCRELX	foo-0x4
 +[a-f0-9]+:	ff 90 00 00 00 00    	callq  \*0x0\(%rax\)	32: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	ff 25 00 00 00 00    	jmpq   \*0x0\(%rip\)        # 3c <foo\+0x3c>	38: R_X86_64_GOTPCRELX	foo-0x4
 +[a-f0-9]+:	ff a1 00 00 00 00    	jmpq   \*0x0\(%rcx\)	3e: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	48 c7 c0 00 00 00 00 	mov    \$0x0,%rax	45: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	48 8b 04 25 00 00 00 00 	mov    0x0,%rax	4d: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	48 8b 05 00 00 00 00 	mov    0x0\(%rip\),%rax        # 58 <foo\+0x58>	54: R_X86_64_THUNK_GOTPCRELX	foo-0x4
 +[a-f0-9]+:	8b 05 00 00 00 00    	mov    0x0\(%rip\),%eax        # 5e <foo\+0x5e>	5a: R_X86_64_GOTPCRELX	foo-0x4
 +[a-f0-9]+:	48 8b 81 00 00 00 00 	mov    0x0\(%rcx\),%rax	61: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	ff 15 00 00 00 00    	callq  \*0x0\(%rip\)        # 6b <foo\+0x6b>	67: R_X86_64_GOTPCRELX	foo-0x4
 +[a-f0-9]+:	ff 90 00 00 00 00    	callq  \*0x0\(%rax\)	6d: R_X86_64_GOTPCREL	foo
 +[a-f0-9]+:	ff 25 00 00 00 00    	jmpq   \*0x0\(%rip\)        # 77 <foo\+0x77>	73: R_X86_64_GOTPCRELX	foo-0x4
 +[a-f0-9]+:	ff a1 00 00 00 00    	jmpq   \*0x0\(%rcx\)	79: R_X86_64_GOTPCREL	foo
#pass

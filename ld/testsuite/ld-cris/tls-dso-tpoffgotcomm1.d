#source: start1.s
#source: tls-dso-tpoffgotcomm1.s
#as: --no-underscore --pic --em=criself -I$srcdir/$subdir
#ld: -m crislinux -shared --hash-style=sysv
#objdump: -d -h -s -t -r -R -p

# Make sure we can link a file with TPOFFGOT relocs against common
# symbols.

.*:     file format elf32-cris

Program Header:
    LOAD off    0x0+ vaddr 0x0+ paddr 0x0+ align 2\*\*13
         filesz 0x0+178 memsz 0x0+178 flags r-x
    LOAD off .*
         filesz .*
 DYNAMIC off .*
         filesz .*
     TLS off    .* vaddr .* paddr .* align 2\*\*2
         filesz 0x0+ memsz 0x0+8 flags r--
#...
Sections:
#...
  7 .got          0+14  0+21f0  0+21f0  0+1f0  2\*\*2
                  CONTENTS, ALLOC, LOAD, DATA
SYMBOL TABLE:
#...
0+ g       \.tbss	0+4 foo
#...
0+4 g       \.tbss	0+4 bar

#...
Contents of section .got:
 21f0 78210000 00000000 00000000 00000000  .*
 2200 00000000                             .*

Disassembly of section \.text:

0+168 <_start>:
 168:	41b2                	moveq 1,\$r11
	\.\.\.

0+16c <do_test>:
 16c:	2f0e 0c00 0000      	add\.d c <bar\+0x8>,\$r0
 172:	1f1e 1000           	add\.w 0x10,\$r1
	\.\.\.

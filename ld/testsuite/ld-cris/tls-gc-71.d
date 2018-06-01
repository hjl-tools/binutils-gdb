#source: tls-gc-71.s
#source: init.s
#source: tls128g.s
#source: tls-hx.s
#as: --pic --no-underscore --em=criself -I$srcdir/$subdir
#ld: --shared -m crislinux --gc-sections --hash-style=sysv
#objdump: -s -t -R -p -T

# DSO with a single R_CRIS_16_DTPREL against a hidden symbol, gc:ed.
# Check that we still have the other, global, TLS variable.

.*:     file format elf32-cris
#...
     TLS off .*
         filesz 0x0+80 memsz 0x0+80 flags r--
#...
DYNAMIC SYMBOL TABLE:
0+132 l    d  \.text	0+ \.text
0+2138 l    d  \.tdata	0+ \.tdata
0+132 g    DF \.text	0+2 _init
0+ g    D  .tdata	0+80 tls128

DYNAMIC RELOCATION RECORDS \(none\)
#...
Contents of section \.text:
 0132 0f050000                             .*
#...
Contents of section \.got:
 2218 b8210000 00000000 00000000           .*

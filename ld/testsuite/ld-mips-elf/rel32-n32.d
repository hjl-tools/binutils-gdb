#name: MIPS rel32 n32
#source: rel32.s
#as: -march=from-abi -KPIC -EB -n32
#readelf: -x .text -r
#ld: -shared -melf32btsmipn32

Relocation section '.rel.dyn' at offset .* contains 2 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
[0-9a-f ]+R_MIPS_NONE      
[0-9a-f ]+R_MIPS_REL32     

Hex dump of section '.text':
  0x00000260 00000000 00000000 00000000 00000000 ................
  0x00000270 00000270 00000000 00000000 00000000 ................
  0x00000280 00000000 00000000 00000000 00000000 ................

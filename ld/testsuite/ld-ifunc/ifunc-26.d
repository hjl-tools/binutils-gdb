#ld: -shared
#readelf: -h -d

ELF Header:
#...
  OS/ABI:                            UNIX - GNU
#...
 +0x[0-9a-f]+ +\(FLAGS_2\) +Flags:.* +IFUNC.*
#pass

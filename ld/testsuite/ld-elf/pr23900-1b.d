#source: pr23900-1.s
#ld:
#readelf: -l --wide
#target: *-*-linux* *-*-gnu* *-*-nacl*

#...
  GNU_PROPERTY .*
#...
 +[0-9]+ +\.note\.gnu\.property 
#...
 +[0-9]+ +\.note\.gnu\.property 
#...
 +[0-9]+ +\.note\.gnu\.property 
#...

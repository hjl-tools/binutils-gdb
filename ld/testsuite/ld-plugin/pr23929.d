# This test fails if -mx86-used-note=yes isn't set by default since
# -Wa,-mx86-used-note=yes is dropped with -flto by GCC:
#
# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=47785
#
#...
Displaying notes found in: \.note\.gnu\.property
[ 	]+Owner[ 	]+Data size[ 	]+Description
#...
[ 	]+GNU[ 	]+0x0+..[ 	]+NT_GNU_PROPERTY_TYPE_0[ 	]+Properties: x86 ISA used:.*
#pass

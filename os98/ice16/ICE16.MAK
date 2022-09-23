.AUTODEPEND

#		*Translator Definitions*
CC = bcc +ICE16.CFG
TASM = TASM
TLIB = tlib
TLINK = tlink
LIBPATH = C:\BC45\LIB
INCLUDEPATH = C:\BC45\INCLUDE


#		*Implicit Rules*
.c.obj:
  $(CC) -c {$< }

.cpp.obj:
  $(CC) -c {$< }

#		*List Macros*


EXE_dependencies =  \
 app.obj \
 cpu.obj \
 dt.obj \
 gdt.obj \
 main.obj \
 cpu32.obj \
 kernel.obj

#		*Explicit Rules*
ice16.exe: ice16.cfg $(EXE_dependencies)
  $(TLINK) /v/x/c/P-/L$(LIBPATH) @&&|
c0t.obj+
app.obj+
cpu.obj+
dt.obj+
gdt.obj+
main.obj+
cpu32.obj+
kernel.obj
ice16
		# no map file
cs.lib
|


#		*Individual File Dependencies*
app.obj: ice16.cfg app.cpp 

cpu.obj: ice16.cfg cpu.cpp 

dt.obj: ice16.cfg dt.cpp 

gdt.obj: ice16.cfg gdt.cpp 

main.obj: ice16.cfg main.cpp 

cpu32.obj: ice16.cfg cpu32.asm 
	$(TASM) /MX /ZI /O CPU32.ASM,CPU32.OBJ

kernel.obj: ice16.cfg kernel.asm 
	$(TASM) /MX /ZI /O KERNEL.ASM,KERNEL.OBJ

#		*Compiler Configuration File*
ice16.cfg: ice16.mak
  copy &&|
-mt
-3
-f-
-N
-v
-S
-vi-
-wpro
-weas
-wpre
-I$(INCLUDEPATH)
-L$(LIBPATH)
| ice16.cfg



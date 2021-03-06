# Microscheme makefile
# (C) 2014 Ryan Suchocki
# microscheme.org

hexify:
	echo "// Hexified internal microscheme files." > src/assembly_hex.c
	xxd -i src/preamble.s >> src/assembly_hex.c
	xxd -i src/MEGA.s >> src/assembly_hex.c
	xxd -i src/UNO.s >> src/assembly_hex.c

	echo "// Hexified internal microscheme files." > src/microscheme_hex.c
	xxd -i src/primitives.ms >> src/microscheme_hex.c
	xxd -i src/stdlib.ms >> src/microscheme_hex.c

build: 
	gcc -ggdb -o microscheme src/*.c

install:
	sudo install -m755 ./microscheme /usr/local/bin


all: build run

build: stopnje_prevajanja

run: stopnje_prevajanja
	./stopnje_prevajanja

clean:
	rm -f stopnje_prevajanja main.i main.s main.o

# build_i sproži predprocesiranje in ustvari datoteko main.i
build_i: main.i
# build_s sproži kompilacijo in ustvari datoteko main.s
build_s: main.s
# build_o sproži zbiranje in ustvari datoteko main.o
build_o: main.o

# 1. Predprocesiranje
main.i: main.c
	gcc -E -Wall -Wextra -Werror -Wpedantic -m32 -o main.i main.c

# 2. Kompilacija
main.s: main.i
	gcc -S -Wall -Wextra -Werror -Wpedantic -m32 -o main.s main.i

# 3. Zbiranje
main.o: main.s
	gcc -c -Wall -Wextra -Werror -Wpedantic -m32 -o main.o main.s

# 4. Povezovanje
stopnje_prevajanja: main.o
	gcc -m32 -o stopnje_prevajanja main.o
all: bench.gcc bench.clang

bench.gcc: main.c
	gcc -Ofast main.c -o bench.gcc

bench.clang: main.c
	clang -Ofast main.c -o bench.clang

clean:
	rm -rf *~ bench.gcc bench.clang out/

flags := -Wall -I. -std=c2x
ldflags :=

.PHONY: clean

all: zz

zz: zipzip.o
	cc $(flags) $^ -o $@ $(ldflags)

zipzip.o: zipzip.c
	cc $(flags) -c $^

clean:
	rm -f zz *.o
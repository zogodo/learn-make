
SOURCE = $(wildcard *.c)

src = main.c    \
      x.c       \
      a/a.c     \
      b/b.c     \
      b/bb/bb.c

icld = -I a/ \
       -I b/

#不需要指定 -I b/bb
#因为在 b/b.c 中是 include"bb/bb.h"
#如果 b/b.c 中是 include"bb.h" 则需要指定

objects = main.o x.o a.o b.o bb.o

#src = *.c */*.c */*/*.c
#objects = *.o
#可以这样暴力玩~
aaa = 123aaaddd222


CC = gcc $(icld)

main: $(objects)
	$(CC) -o main $(objects)
$(objects): $(src)
	$(CC) -c $(src)

clean:
	rm -rf main *.o **/*.o

xxx:
	@echo "$(SOURCE)"
	@echo $(aaa)


arr1 = "aaa bbb ccc"
arr2 = $(foreach a, $(arr1),AA$(a)ZZ) #最后一个逗号后面如果有空格,会被保留
$(info $(arr2))

abc:
	@echo abc



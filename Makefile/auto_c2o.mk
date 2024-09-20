FLAGS = -I. -Ia/ -Ib/
CFLAGS=-std=c99 ${FLAGS}
# CPPFLAGS=-std=c++11 ${FLAGS}
CC=gcc

#注释的#号前面有空格的话,前面的变量最后就会有空格
SRCS=$(wildcard *.c a/*.c b/*.c b/bb/*.c)#把所有路径的.c文件全部展开
SRCS2=$(notdir $(SRCS))#去掉所有路径
OBJS=$(patsubst %.c,%.o,$(SRCS) )#替换.c成.o

# SRCS=x.c main.c a/a.c b/b.c b/bb/bb.c
# SRCS2=x.c main.c a.c b.c bb.c
# OBJS=x.o main.o a/a.o b/b.o b/bb/bb.o

all: $(OBJS)
	$(CC) -o xxx $(OBJS)

clean:
	@find . -name "*.o" | xargs rm

#并不需要写 .c 到 .o 的 target
#会自动执行以下命令:
# gcc -std=c99 -I. -Ia/ -Ib/   -c -o x.o x.c
# gcc -std=c99 -I. -Ia/ -Ib/   -c -o main.o main.c
# gcc -std=c99 -I. -Ia/ -Ib/   -c -o a/a.o a/a.c
# gcc -std=c99 -I. -Ia/ -Ib/   -c -o b/b.o b/b.c
# gcc -std=c99 -I. -Ia/ -Ib/   -c -o b/bb/bb.o b/bb/bb.c

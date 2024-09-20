FLAGS = -I. -Ia/ -Ib/
CFLAGS=-std=c99 ${FLAGS}
# CPPFLAGS=-std=c++11 ${FLAGS}
CC=gcc

#注释的#号前面有空格的话,前面的变量最后就会有空格
SRCS=$(wildcard *.c a/*.c b/*.c b/bb/*.c)#把所有路径的.c文件全部展开
SRCS2=$(notdir $(SRCS))#去掉所有路径
OBJS=$(patsubst %.c,%.o,$(SRCS) )#替换.c成.o

all: $(OBJS)
	@echo $(SRCS)
	@echo $(SRCS2)
	@echo $(OBJS)
	$(CC) -o xxx $(OBJS)

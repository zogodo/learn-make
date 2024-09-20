FLAGS = -I a/ -I b/
CFLAGS=${FLAGS}
CPPFLAGS=-std=c++11 ${FLAGS}

SRCS=$(wildcard *.c a/*.c b/*.c b/bb/*.c)#把所有路径的.c文件全部展开
SRCS2=$(notdir $(SRCS))#去掉所有路径
OBJS=$(patsubst %.c,%.o,$(SRCS2) )#替换.c成.o

all: $(SRCS2)
	@echo $(SRCS)
	@echo $(SRCS2)
	@echo $(OBJS)


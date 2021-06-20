CC := gcc
CFLAGS +=
LDFLAGS +=

TARGET :=
SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJS)

.PHONY: all clean
all: $(TARGET)

clean:
	$(RM) $(TARGET) $(OBJS)

default: all

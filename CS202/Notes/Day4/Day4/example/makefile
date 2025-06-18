CC = g++
CFLAGS= -Wall -Wextra -pedantic -std=c++11 -g
DEPS = saleregister.h snacktype.h
OBJS = main.o saleregister.o snacktype.o
TARGET = main.out

all: $(TARGET)

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm $(OBJS) $(TARGET)
	
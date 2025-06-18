CC = g++
CFLAGS= -Wall -Wextra -pedantic -std=c++11 -g
DEPS = pets.h
OBJS = main.o pets.o
TARGET = a.out

all: $(TARGET)

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm $(OBJS) $(TARGET)
	
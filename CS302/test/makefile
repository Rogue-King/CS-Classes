CC = g++
CFLAGS= -Wall -Wextra -pedantic -std=c++11 -g
DEPS = stackInterface.h linkedStack.h node.h 
OBJS = main.o linkedStack.o node.0
TARGET = a.out

all: $(TARGET)

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean

clean:
	rm $(OBJS) $(TARGET)
	
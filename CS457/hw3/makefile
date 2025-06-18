#file makefile
#author Miguel Muniz
#compiles program, executable is called SQLExecutable, ensures c++ 17 is used
#version 0.5
#date 2023-04-024

CXX=g++-11
CXXFLAGS=-std=c++17 -Wall -Wextra
LDFLAGS=-lstdc++fs

SQLExecutable: main.o 
	$(CXX) $(LDFLAGS) main.o -o SQLExecutable

main.o: main.cpp SQLManager.h
	$(CXX) $(CXXFLAGS) -c main.cpp

clean:
	rm -f *.o SQLExecutable
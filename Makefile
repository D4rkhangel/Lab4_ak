all: hello

hello: main.o fact.o hello.o
	g++ main.o fact.o hello.o -o hello

main.o: main.cpp
	g++ -c main.cpp

factorial.o: fact.cpp
	g++ -c fact.cpp

hello.o: hello.cpp
	g++ -c hello.cpp

clean:
	rm -rf *.o hello

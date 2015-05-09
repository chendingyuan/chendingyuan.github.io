cpp	=	g++
cc	=	gcc

program=temp
all: $(program).exe

$(program).exe: main.o
	$(cpp) main.o -o $(program).exe

main.o: main.cpp
	$(cpp) -c main.cpp -o main.o

clean:
	rm *.o *.exe

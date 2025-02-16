CC=gcc
AR=ar
FLAGS= -Wall -g
OBJECTS_MAIN=main.o
OBJECTS_MAT=my_mat.o

all: connections

connections: $(OBJECTS_MAIN) $(OBJECTS_MAT)
	$(CC) $(FLAGS) $(OBJECTS_MAIN) $(OBJECTS_MAT) -o connections
	
main.o: main.c my_mat.h
	$(CC) $(FLAGS) -c main.c
	
my_mat.o: my_mat.c my_mat.h
	$(CC) $(FLAGS) -c my_mat.c


.PHONY: clean all

clean:
	rm -f *.o connections
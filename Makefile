#-*-Makefile-*-
CC=gcc
OBJECTS_MAIN=main.o
FLAGS= -Wall -g
OBJECTS_POWER_MYMATH=basicMath.o power.o

all: maind mains
	 
maind: mymathd $(OBJECTS_MAIN)
	$(CC) $(OBJECTS_MAIN) -o maind ./libmyMath.so
	
mymathd: $(OBJECTS_POWER_MYMATH)
	$(CC) -shared -o libmyMath.so $(OBJECTS_POWER_MYMATH)
	
mains: $(OBJECTS_MAIN) mymaths
	$(CC) $(OBJECTS_MAIN) -o mains libmyMath.a
	
mymaths: $(OBJECTS_POWER_MYMATH)
	ar rc libmyMath.a $(OBJECTS_POWER_MYMATH)

basicMath.o: basicMath.c
	$(CC) $(FLAGS) -fPIC -c basicMath.c

power.o: power.c
	$(CC) $(FLAGS) -fPIC -c power.c

$(OBJECTS_MAIN): main.c myMath.h
	$(CC) $(FLAGS) -fPIC -c main.c 

.PHONY: clean all

clean:
	rm -f *.o mains maind *.so *.a







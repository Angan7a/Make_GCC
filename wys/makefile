
CC = g++
CFLAG = -c

TARGET = $(shell ls *.cpp) 

OBJECT = $(TARGET:.cpp=.o)

%.o:%.cpp
	$(CC) $(CFLAG) -o $@ $<


.PONY: all
all: $(OBJECT)
	$(CC) -o demo.out $^
	./demo.out > test
	diff testout test

.PONY:clean
clean:
	rm -f demo.out $(OBJECT) test






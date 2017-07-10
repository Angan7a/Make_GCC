CC:=g++
FLAG := -c
FILE := hello.cpp 

OBJECT = $(FILE:.cpp=.o)

OUTPUT = $(FILE:.cpp=.out)

FLAG:=-c

%.o : %.cpp
	g++ -c $< -o $@ 

.PHONY:all
all:  $(OBJECT)
	g++ -o $(OUTPUT) $^

#qwert: hello.cpp
#    for number in 1 2 3 4 ; do \
#        echo $$number ; \
#    done.

clean:
	rm hello.o hello.out


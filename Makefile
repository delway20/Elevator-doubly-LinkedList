XX = g++
CXXFLAGS = -Wall

proj1: elevator.o mytest.cpp
	$(CXX) $(CXXFLAGS) elevator.o mytest.cpp -o proj1

elevator.o: elevator.cpp elevator.h
	$(CXX) $(CXXFLAGS) -c elevator.cpp

run:
	proj1

val:
	valgrind proj1

clean:
	rm *~	
	rm *.o

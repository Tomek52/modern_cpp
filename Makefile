CXX=g++
STD= -std=c++14
CXXFLAGS= -c -Wall -Wextra -Werror -Wpedantic -g
SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)

modern: $(OBJECTS)
	$(CXX) $(OBJECTS) $(STD) -o $@

main.o: main.cpp Square.hpp Shape.hpp Rectangle.hpp
	$(CXX) $< $(STD) -o $@ $(CXXFLAGS)

square.o: Square.cpp Square.hpp
	$(CXX) $< $(STD) -o $@ $(CFXXLAGS)

shape.o: Shape.cpp Shape.hpp
	$(CXX) $< $(STD) -o $@ $(CXXFLAGS)

rectangle.o: Rectangle.cpp Rectangle.hpp
	$(CXX) $< $(STD) -o $@ $(CXXFLAGS)

circle.o: Circle.cpp Circle.hpp
	$(CXX) $< $(STD) -o $@ $(CXXFLAGS)

.PHONY : clean
clean:
	rm modern $(OBJECTS)

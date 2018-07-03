CC=g++
STD= -std=c++14
CFLAGS= -c -Wall -Wextra -Werror -Wpedantic -g
OBJ= Circle.o Rectangle.o Shape.o Square.o main.o

modern: $(OBJ)
	$(CC) $(OBJ) $(STD) -o $@

main.o: main.cpp Square.hpp Shape.hpp Rectangle.hpp
	$(CC) $< $(STD) -o $@ $(CFLAGS)

square.o: Square.cpp Square.hpp
	$(CC) $< $(STD) -o $@ $(CFLAGS)

shape.o: Shape.cpp Shape.hpp
	$(CC) $< $(STD) -o $@ $(CFLAGS)

rectangle.o: Rectangle.cpp Rectangle.hpp
	$(CC) $< $(STD) -o $@ $(CFLAGS)

circle.o: Circle.cpp Circle.hpp
	$(CC) $< $(STD) -o $@ $(CFLAGS)

clean:
	rm *.o modern

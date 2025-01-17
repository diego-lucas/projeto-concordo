.DEFAULT_GOAL := all 

#quando adicionar uma nova dependencia não esqueça de atualizar aqui!
OBJECTS=build/sistema.o build/executor.o


build/sistema.o: src/sistema.cpp include/sistema.h
	g++ -Iinclude src/sistema.cpp -c -o build/sistema.o

build/executor.o: src/executor.cpp include/executor.h 
	g++ -Iinclude src/executor.cpp -c -o build/executor.o


objects: $(OBJECTS)

concordo: objects src/concordo.cpp
	g++ -Wall -fsanitize=address -Iinclude $(OBJECTS) -lpqxx -lpq src/concordo.cpp -o build/concordo

clean:
	rm build/*.o build/concordo

all: concordo

run:
	./build/concordo

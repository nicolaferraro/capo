default: build

build:
	g++ -lSPIRV-Tools-opt -lSPIRV-Tools -o assembler assembler.cpp

run: build
	./assembler

.PHONY: build run

default: build

build:
	g++ -lOpenCL -o capo capo.cpp

build-cpu:
	g++ -lOpenCL -o capo -DRUN_ON_CPU capo.cpp

run: build
	time ./capo

run-cpu: build-cpu
	time ./capo

.PHONY: build build-cpu run run-cpu

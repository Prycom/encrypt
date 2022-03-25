CC=tcc/tcc.exe
.PHONY:default build run
default: build run
build: main.c builder.c $(CFILES)
	$(CC) -o builder.exe builder.c $(CFILES)
	$(CC) -o main.exe main.c $(CFILES)
run:
	builder.exe
	main.exe
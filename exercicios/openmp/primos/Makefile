
CC = gcc

CFLAGS = -O3
LDFLAGS = -fopenmp

TARGET = primos.x  primos_parallel.x

SOURCE = primos.c

ALL: $(TARGET)

primos.x: $(SOURCE)
	$(CC) $(CFLAGS) $< -o$@ $(LDFLAGS)

primos_parallel.x: primos_parallel.c
	$(CC) $(CFLAGS) $< -o$@ $(LDFLAGS)

clean:
	rm -f $(TARGET) *.o

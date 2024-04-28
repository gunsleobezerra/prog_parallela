
CC = gcc

CFLAGS = -O3
LDFLAGS = -fopenmp

TARGET = vida.x  vida_parallel.x

SOURCE = vida.c

ALL: $(TARGET)

vida.x: $(SOURCE)
	$(CC) $(CFLAGS) $< -o$@ $(LDFLAGS)

vida_parallel.x: vida_parallel.c
	$(CC) $(CFLAGS) $< -o$@ $(LDFLAGS)

clean:
	rm -f $(TARGET) *.o

# Makefile para compilar um programa em C com OpenMP

# Nome do compilador
CC=gcc

# Opções de compilação
CFLAGS=-fopenmp


# Regra padrão
compile_schedule:
	$(CC) $(CFLAGS) schedule.c -o schedule_seq.o  -lm
	$(CC) $(CFLAGS) schedule_openmp_default.c -o schedule_par_default.o  -lm
	$(CC) $(CFLAGS) schedule_openmp_static.c -o schedule_par_static.o  -lm
	$(CC) $(CFLAGS) schedule_openmp_dynamic.c -o schedule_par_dynamic.o  -lm

compile_odd_even:
	$(CC) $(CFLAGS) oddeven.c -o oddeven_seq.o  -lm
	$(CC) $(CFLAGS) oddeven_par.c -o oddeven_par.o  -lm

compile_quicksort:
	$(CC) -o3 $(CFLAGS) quicksort.c -o quicksort_seq.o -lm
	$(CC) -o3 $(CFLAGS) quicksort_parallel.c -o quicksort_par.o -lm

compile_mmult:
	$(CC) $(CFLAGS) mmult.c -o mmult_seq.o -lm
	$(CC) $(CFLAGS) mmult_parallel.c -o mmult_par.o -lm

# Regra para limpar os arquivos compilados
clean:
	rm -f $(OUTPUT)
	rm -f *.o
	rm -f *.txt

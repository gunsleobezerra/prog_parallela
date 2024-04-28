# Makefile para compilar um programa em C com OpenMP

# Nome do compilador
CC=gcc

# Opções de compilação
CFLAGS=-fopenmp

AULAS_PATH="aulas/"
EXERCICIOS_PATH="exercicios/"

# Compila AULAS
compile_schedule:
	$(CC) $(CFLAGS) $(AULAS_PATH)schedule.c -o $(AULAS_PATH)schedule_seq.o  -lm
	$(CC) $(CFLAGS) $(AULAS_PATH)schedule_openmp_default.c -o $(AULAS_PATH)schedule_par_default.o  -lm
	$(CC) $(CFLAGS) $(AULAS_PATH)schedule_openmp_static.c -o $(AULAS_PATH)schedule_par_static.o  -lm
	$(CC) $(CFLAGS) $(AULAS_PATH)schedule_openmp_dynamic.c -o $(AULAS_PATH)schedule_par_dynamic.o  -lm

compile_odd_even:
	$(CC) $(CFLAGS) $(AULAS_PATH)oddeven.c -o $(AULAS_PATH)oddeven_seq.o  -lm
	$(CC) $(CFLAGS) $(AULAS_PATH)oddeven_par.c -o $(AULAS_PATH)oddeven_par.o  -lm

compile_quicksort:
	$(CC) -o3 $(CFLAGS) $(AULAS_PATH)quicksort.c -o $(AULAS_PATH)quicksort_seq.o -lm
	$(CC) -o3 $(CFLAGS) $(AULAS_PATH)quicksort_parallel.c -o $(AULAS_PATH)quicksort_par.o -lm

compile_mmult:
	$(CC) $(CFLAGS) $(AULAS_PATH)mmult.c -o $(AULAS_PATH)mmult_seq.o -lm
	$(CC) $(CFLAGS) $(AULAS_PATH)mmult_parallel_out_pragma.c -o $(AULAS_PATH)mmult_par_out_pragma.o -lm
	$(CC) $(CFLAGS) $(AULAS_PATH)mmult_parallel_out_pragma_intern_pragma.c -o $(AULAS_PATH)mmult_par_intern_pragma.o -lm


# Regra para limpar os arquivos compilados
clean:
	rm -f $(OUTPUT)
	rm -f *.o
	rm -f *.txt
	rm -f $(AULAS_PATH)*.o
	rm -f $(AULAS_PATH)*.txt
	

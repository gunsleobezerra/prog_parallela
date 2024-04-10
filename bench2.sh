#compila os arquivos
make compile_quicksort

ARQUIVO="bench_quick_sort.txt"
# roda cada um dos arquivos com  1 , 2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,10 threads e salva em arquivo bench.txt
#limpa arquivo bench.txt
echo "" > $ARQUIVO
for i in {1..1000..1}
do
    echo "$i - threads------------" >> $ARQUIVO
    echo "sequential:" >> $ARQUIVO
    ./quicksort_seq.o $i >> $ARQUIVO
    
    echo "paralell:" >> $ARQUIVO
    ./quicksort_par.o $i >> $ARQUIVO
    
    
   
    echo "----------------------------------------" >> $ARQUIVO
    

done

#compila os arquivos
make compile_mmult

ARQUIVO="bench_mmult.txt"
# roda cada um dos arquivos com  1 , 2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,10 threads e salva em arquivo bench.txt
#limpa arquivo bench.txt
echo "" > $ARQUIVO
for i in {1..10}
do
    echo "$i - threads------------" >> $ARQUIVO
    echo "sequential:" >> $ARQUIVO
    ./mmult_seq.o $i >> $ARQUIVO
    
    echo "paralell_out_Pragma:" >> $ARQUIVO
    ./mmult_par_out_pragma.o $i >> $ARQUIVO

    echo "paralell_out_in_Pragma:" >> $ARQUIVO
    ./mmult_par_intern_pragma.o $i >> $ARQUIVO
    
    
   
    echo "----------------------------------------" >> $ARQUIVO
    

done

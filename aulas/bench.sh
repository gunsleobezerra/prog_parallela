#compila os arquivos
make compile_schedule

# roda cada um dos arquivos com  1 , 2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,10 threads e salva em arquivo bench.txt
#limpa arquivo bench.txt
echo "" > bench.txt
for i in {1..10}
do
    echo "$i - threads------------" >> bench.txt
    echo "sequential:" >> bench.txt
    ./schedule_seq.o $i >> bench.txt
    
    echo "static:" >> bench.txt
    ./schedule_par_static.o $i >> bench.txt
    
    echo "dynamic:" >> bench.txt
    ./schedule_par_dynamic.o $i >> bench.txt
    
    echo "default:" >> bench.txt
    ./schedule_par_default.o $i >> bench.txt
   
    echo "----------------------------------------" >> bench.txt
    

done

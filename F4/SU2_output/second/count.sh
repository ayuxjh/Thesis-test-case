for i in $(seq 0 50)
do
	grep 'Total Time:' ./bin/file$i.dat| tee -a ./count_Total_Time.dat
	grep 'preconditon Time:'  ./bin/file$i.dat| head -1 | tee -a ./count_computeLUfactors.dat
	grep 'FGMRES Solver Time:'   ./bin/file$i.dat| head -1 | tee -a ./count_FGMRES.dat
	grep 'Smoother Time:' ./bin/file$i.dat  | tail -1 | tee -a ./count_Smoother.dat
        grep 'Smoother Time:' ./bin/file$i.dat  -c | tee -a ./count_number.dat
done

rm count_Total_Time.dat
rm count_computeLUfactors.dat
rm count_FGMRES.dat
rm count_Smoother.dat
rm count_number.dat
for i in $(seq 0 50)
do
       	cd  bin$i
	grep 'Total Time:' output_FGMRES_ILU_0.dat| tee -a ../count_Total_Time.dat
	grep 'computeLUFactors Time:'  output_FGMRES_ILU_0.dat| tee -a ../count_computeLUfactors.dat
	grep '    solve: '   output_FGMRES_ILU_0.dat| tee -a ../count_FGMRES.dat
	grep 'Smoother used ' output_FGMRES_ILU_0.dat  | tail -1 | tee -a ../count_Smoother.dat
        grep 'Smoother used ' output_FGMRES_ILU_0.dat  -c | tee -a ../count_number.dat
	grep 'Maximum Memory Usage: 	'    output_FGMRES_ILU_0.dat| tee -a ../count_Memory.dat
	cd ../
done

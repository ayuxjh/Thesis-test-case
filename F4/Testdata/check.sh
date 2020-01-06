for i in $(seq 0 50)
do
       cd  bin$i
       /home/jianheng.xue/AMGX_first/AMGX//build/examples/amgx_capi_su -c ../json/FGMRES_ILU_0.json -mi 5 | tee -a output_FGMRES_ILU_0.dat
       cd ../
done

##Usage : sh batch.sh
##Last batch file name = batch_run.sh
read -p "Please write the inputfile prefix(example:fa):" prefix
for i in *.$prefix
do
	echo "$i" >> batch_file
done
echo "Please write the constant1 and constant2"
python3 batch_noneout.py > batch_run.sh
##len=`cat batch_run.sh | wc -l`
##ParaFly -c batch_run.sh -CPU $len

#PBS -lnodes=1:ppn=2:compute,walltime=48:00:00
cd ~/storage/
# Change to directory from which qsub command was issued 
module load LAS/java/1.8.0_60
module load LAS/beast
module load LAS/lib/beagle/2.1.2

for file in *.xml
do echo $file
java -Xms64m -Xmx256m -jar  ~/bin/beast/lib/beast.jar -overwrite ./$file
mv data.trees $file.trees
mv 5.log $file.log
done
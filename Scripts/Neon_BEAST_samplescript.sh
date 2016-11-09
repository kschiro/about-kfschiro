#!/bin/sh
#$ -N #Name of run
#$ -e /Users/kschiro/name of error file.err
#$ -o /Users/kschiro/name of output file.out
#$ -M kelly-schiro@uiowa.edu
#$ -m abe
#$ -l mf=4G
#$ -cwd

cd /Users/path/for/run

# module load beagle_lib
module load jdk/8u92

java -Xms100m -Xmx32000m -jar ~/bin/beast/lib/beast.jar -overwrite bfdv_neon0_HKY_relaxedlog_100mil_063016.xml
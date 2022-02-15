#!/bin/bash

Usage() {
	echo ‘Usage: WIN_dsi_trk_loop deface-sub-list.txt’
        exit 0
}

[ ‘$1’ = ‘’ ] && Usage

# Subject list for loop
subs=`cat ${1}`          # make sure txt file is full fib file names

for sub in ${subs}
do
echo $sub
sbatch ./deface-single-sub.sh ${sub}

echo ‘done for subject: ‘ ${sub}
done
 

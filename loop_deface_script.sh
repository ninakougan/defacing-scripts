#!/usr/bin/bash

Usage() {
	echo ‘Usage: WIN_dsi_trk_loop paths.txt‘
	exit 0
}

[ ‘$1’ = ‘’ ] && Usage

# Subject list for loop
subs=`cat ${1}`

for sub in ${subs}
do
echo $sub
sbatch ./deface_single_sub.sh ${sub}

echo ‘done for subject: ‘ ${sub}
done
 

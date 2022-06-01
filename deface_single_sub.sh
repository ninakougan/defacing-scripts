#!/usr/bin/bash
#
#SBATCH -A p31589
#SBATCH -p short
#SBATCH -t 00:30:00
#SBATCH --mem=64G
#SBATCH -J deface
#SBATCH --mail-type=END,FAIL


pydeface ${1}



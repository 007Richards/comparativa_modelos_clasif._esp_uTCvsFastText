#!/bin/bash
#SBATCH --mem=25G
#SBATCH -p compute
#SBATCH -c 12
#SBATCH -n 1
#SBATCH -e /home/utc/stderr.txt
#SBATCH -o /home/utc/stdout.txt
source ~/pythvenv/bin/activate
sh microtcR.sh

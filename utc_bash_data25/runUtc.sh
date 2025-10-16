#!/bin/bash
#SBATCH --mem=25G
#SBATCH -p compute
#SBATCH -c 12
#SBATCH -n 1
#SBATCH -e /home/rfabian/restMex25/utc/pol/stderr.txt
#SBATCH -o /home/rfabian/restMex25/utc/pol/stdout.txt
source ~/pythvenv/bin/activate
sh microtcR.sh

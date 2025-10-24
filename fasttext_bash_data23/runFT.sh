#!/bin/bash
#SBATCH --mem=25G
#SBATCH -p compute
#SBATCH -c 12
#SBATCH -n 1
#SBATCH -e /home/fasttext/stderr.txt
#SBATCH -o /home/fasttext/stdout.txt
source ~/pythvenv/bin/activate
sh ~/fasttext/fasttextR.sh

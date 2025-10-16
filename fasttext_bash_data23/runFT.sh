#!/bin/bash
#SBATCH --mem=25G
#SBATCH -p compute
#SBATCH -c 12
#SBATCH -n 1
#SBATCH -e /home/rfabian/restMex/fasttext/stderr.txt
#SBATCH -o /home/rfabian/restMex/fasttext/stdout.txt
source ~/pythvenv/bin/activate
sh ~/restMex/fasttext/fasttextR.sh

#!/bin/bash

train=/home/fasttext/pol/Rest_Mex_Pol_train.csv
test=/home/fasttext/pol/Rest_Mex_Pol_test.csv
res="ResultadosPol.txt"
#numero de n-gramas "1-5":
n=3
#numero de epocas "5-50":
epo=25
#taza de aprendizaje "0.1-1.0":
lr=1.0
model="fasttext_model1"
pred="prediccionesPol1.txt"


/home/rfabian/fastText/fasttext supervised -input $train -output $model -epoch $epo -lr $lr -wordNgrams $n && /home/rfabian/fastText/fasttext predict $model.bin $test 5 > $pred && /home/rfabian/fastText/fasttext test $model.bin $test > $res

#!/bin/bash

train=/home/fasttext/Rest_Mex_train.csv
test=/home/fasttext/Rest_Mex_test.csv
res="ResultadosPol.txt"
#numero de n-gramas "1-5":
n=3
#numero de epocas "5-50":
epo=25
#taza de aprendizaje "0.1-1.0":
lr=1.0
model="fasttext_model1"
pred="predicciones.txt"


/home/rfabian/fastText/fasttext supervised -input $train -output $model -epoch $epo -lr $lr -wordNgrams $n && /home/fastText/ predict $model.bin $test 5 > $pred && /home/asttext test $model.bin $test > $res

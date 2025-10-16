#!/bin/bash

echo Archivo de entrenamiento:
read train
echo Archivo de prueba:
read test
#numero de n-gramas "1-5":
n=3
#numero de epocas "5-50":
epo=25
#taza de aprendizaje "0.1-1.0":
lr=1.0

res="resultados.txt"
model="fasttext_model"
pred="predicciones.txt"

fasttext supervised -input $train -output $model -epoch $epo -lr $lr -wordNgrams $n && fasttext predict $model.bin $test > $pred

fasttext test $model.bin $test > $res

#!/bin/bash

test="/home/utc/Rest_Mex_test.json"
train="/home/utc/Rest_Mex_train.json"
res="resultado.json"
pred="predicted.json"
params="params_utc.params"
model="model_utc.model"

microtc-params -k5 -Smacrof1 -s12 -n12 $train -o $params && microtc-train -o $model -m $params $train
microtc-predict -m $model -o $pred $test && microtc-perf $test $pred -o $res

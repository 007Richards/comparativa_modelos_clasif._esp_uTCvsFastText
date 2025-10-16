#!/bin/bash

test="/home/rfabian/restMex/utc/coun/Rest_Mex_Coun_test.json"
train="/home/rfabian/restMex/utc/coun/Rest_Mex_Coun_train.json"
res="resultadoCoun.json"
pred="predictedCoun.json"
params="params_utc.params"
model="model_utc.model"

microtc-params -k5 -Smacrof1 -s12 -n12 $train -o $params && microtc-train -o $model -m $params $train
microtc-predict -m $model -o $pred $test && microtc-perf $test $pred -o $res

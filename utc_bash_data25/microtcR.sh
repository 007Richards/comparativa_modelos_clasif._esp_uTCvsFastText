#!/bin/bash

test="/home/utc/Rest-Mex25_test.json"
train="/home/utc/Rest-Mex25_train.json"
res="resultado.json"
pred="predicted.json"
params="params_utc.params"
model="model_utc.model"

microtc-params -k5 -Smacrof1 -s12 -n12 $train -o $params && 

python3 <<EOF
import json
with open('$params') as f:
    params = json.load(f)
params['clf_args'] = {'max_iter': 10000, 'class_weight': 'balanced'}
with open('$params', 'w') as f:
    json.dump(params, f, indent=2)
EOF
microtc-train -o $model -m $params $train && microtc-predict -m $model -o $pred $test && microtc-perf $test $pred -o $res

#!/usr/bin/env sh

TOOLS=../caffe-1.0/build/tools

mkdir ./save
GLOG_logtostderr=1 $TOOLS/caffe train --solver=./solver.prototxt --gpu=$1 2>&1 | tee log 

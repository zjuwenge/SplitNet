#!/usr/bin/env sh

TOOLS=/path/to/caffe/build/tools

if [ $# -lt 3 ]
then
    echo "Usage: ./extract.sh iter batchsize batchnum [gpu]"
    exit
fi

GLOG_logtostderr=1 $TOOLS/extract_txt ./save/image50_iter_$1.caffemodel ./extract.prototxt pool5 ./image50_fea.txt no $2 $3 2>&1 | tee log_extract

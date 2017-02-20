#!/bin/bash
set -o errexit off
set -o verbose on

mkdir -p misc
mkdir -p caption-generator
mkdir -p image-generator

pushd misc
git clone https://github.com/tensorflow/models.git tensorflow-models
popd

pushd caption-generator
ln -s ../misc/tensorflow-models/im2txt/
git clone https://github.com/kelvinxu/arctic-captions
popd

pushd image-generator
git clone https://github.com/hanzhanggit/StackGAN.git
popd

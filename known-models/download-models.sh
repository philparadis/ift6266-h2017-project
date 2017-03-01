#!/bin/bash
set -o errexit off
set -o verbose on

mkdir -p misc
pushd misc
git clone https://github.com/tensorflow/models.git tensorflow-models
popd

mkdir -p caption-generator
pushd caption-generator
ln -s ../misc/tensorflow-models/im2txt/
git clone https://github.com/kelvinxu/arctic-captions
popd


mkdir -p image-generator
pushd image-generator
# "Semantic Image Inpainting with Perceptual and Contextual Losses"
git clone https://github.com/bamos/dcgan-completion.tensorflow
# Generative Adversarial Text-to-Image Synthesis
git clone https://github.com/reedscot/icml2016 reedscot-icml2016
# Learning Deep Representations of Fine-grained Visual Descriptions
git clone https://github.com/reedscot/cvpr2016 reedscot-cvpr2016
# StackGAN: Text to Photo-realistic Image Synthesis with Stacked Generative Adversarial Networks
git clone https://github.com/hanzhanggit/StackGAN.git
# Conditional generative adversarial nets
git clone https://github.com/zhangqianhui/Conditional-Gans
# Generating images from captions with attention
git clone https://github.com/emansim/text2image
popd

#!/bin/bash

A1111_DIR=${WORKSPACE}/stable-diffusion-webui

mkdir -p "$A1111_DIR/models/Stable-diffusion"
mkdir -p "$A1111_DIR/models/Lora"
mkdir -p "$A1111_DIR/models/VAE"

# Checkpoint
wget -O "$A1111_DIR/models/Stable-diffusion/hassakuXLIllustrious_v30.safetensors" \
  "https://civitai.com/api/download/models/2010753?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=$CIVITAI_TOKEN"

# Loras
wget -O "$A1111_DIR/models/Lora/M1nma_style-000018.safetensors" \
  "https://civitai.com/api/download/models/1604190?type=Model&format=SafeTensor&token=$CIVITAI_TOKEN"

wget -O "$A1111_DIR/models/Lora/Semi-Realism_Illustrious.safetensors" \
  "https://civitai.com/api/download/models/1340291?type=Model&format=SafeTensor&token=$CIVITAI_TOKEN"

wget -O "$A1111_DIR/models/Lora/[Style] Daily Lives of my Countryside v2 [Illustrious-XL 2.0].safetensors" \
  "https://civitai.com/api/download/models/1774470?type=Model&format=SafeTensor&token=$CIVITAI_TOKEN"

# VAE
wget -O "$A1111_DIR/models/VAE/sdxlVAE_sdxlVAE.safetensors" \
  "https://civitai.com/api/download/models/333245?type=Model&format=SafeTensor&token=$CIVITAI_TOKEN"

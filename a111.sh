#!/bin/bash

A1111_DIR=${WORKSPACE}/stable-diffusion-webui
# Checkpoint
wget -O "$A1111_DIR/models/Stable-diffusion/model.safetensors" \
  "https://civitai.com/api/download/models/2081643?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=$CIVITAI_TOKEN"

# Loras
wget -O "$A1111_DIR/models/Lora/lora1.safetensors" \
  "https://civitai.com/api/download/models/1604190?type=Model&format=SafeTensor&token=$CIVITAI_TOKEN"

wget -O "$A1111_DIR/models/Lora/lora2.safetensors" \
  "https://civitai.com/api/download/models/1340291?type=Model&format=SafeTensor&token=$CIVITAI_TOKEN"

wget -O "$A1111_DIR/models/Lora/lora3.safetensors" \
  "https://civitai.com/api/download/models/1774470?type=Model&format=SafeTensor&token=$CIVITAI_TOKEN"

# VAE
wget -O "$A1111_DIR/models/VAE/vae.safetensors" \
  "https://civitai.com/api/download/models/333245?type=Model&format=SafeTensor&token=$CIVITAI_TOKEN"

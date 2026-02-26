#!/bin/bash

A1111_DIR=${WORKSPACE}/stable-diffusion-webui
EXT_DIR="$A1111_DIR/extensions"

mkdir -p "$A1111_DIR/models/Stable-diffusion"
mkdir -p "$A1111_DIR/models/Lora"
mkdir -p "$A1111_DIR/models/VAE"

# Extensions
git clone https://github.com/civitai/sd_civitai_extension "$EXT_DIR/sd_civitai_extension" --recursive

# Config
cat > "$A1111_DIR/config.json" <<EOF
{
    "quicksettings_list": [
        "sd_model_checkpoint",
        "CLIP_stop_at_last_layers",
        "sd_vae"
    ],
    "CLIP_stop_at_last_layers": 2
}
EOF

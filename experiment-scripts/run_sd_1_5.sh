#!/bin/bash

# From diffusion-fast source directory.
python run_benchmark.py --ckpt "runwayml/stable-diffusion-v1-5" --no_sdpa --no_bf16 && \
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --no_bf16 --compile_mode=default --compile_vae --change_comp_config && \
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --no_bf16 --compile_mode=default --compile_vae --change_comp_config --enable_fused_projections && \
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --no_bf16 --compile_mode=default --compile_vae --enable_fused_projections --do_quant "int8weightonly" --change_comp_config && \
python prepare_results.py --plot_title "SD1.5, Batch Size: 1, Steps: 30" --final_csv_filename "collated_results.csv"

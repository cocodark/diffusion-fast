#!/bin/bash

# From diffusion-fast source directory.
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --no_bf16 --compile_mode=default --compile_vae && \
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --no_bf16 --compile_mode=reduce-overhead --compile_vae && \
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --no_bf16 --compile_mode=max-autotune --compile_vae && \
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --no_bf16 --compile_mode=max-autotune-no-cudagraphs --compile_vae && \
python prepare_results.py --plot_title "SD1.5, Batch Size: 1, Steps: 30" --final_csv_filename "collated_results.csv"

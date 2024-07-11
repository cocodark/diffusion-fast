#!/bin/bash

# From diffusion-fast source directory.
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --d_type=f16 --compile_mode=default --compile_vae --compile_backend=inductor && \ 
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --d_type=f16 --compile_mode=default --compile_vae --compile_backend=torch_tensorrt && \
python run_benchmark.py  --ckpt "runwayml/stable-diffusion-v1-5" --compile_unet --d_type=f16 --compile_mode=default --compile_vae --compile_backend=cudagraphs && \
python prepare_results.py --plot_title "SD1.5, Batch Size: 1, Steps: 30" --final_csv_filename "collated_results.csv"

python run_benchmark.py --ckpt "runwayml/stable-diffusion-v1-5" --no_sdpa --d_type=f32&& \
python run_benchmark.py --ckpt "runwayml/stable-diffusion-v1-5" --no_sdpa --d_type=f16&& \
python run_benchmark.py --ckpt "runwayml/stable-diffusion-v1-5" --no_sdpa --d_type=bf16&& \
python prepare_results.py --plot_title "SD1.5, Batch Size: 1, Steps: 30" --final_csv_filename "collated_results.csv"

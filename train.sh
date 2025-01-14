#!/bin/bash -e
. env/bin/activate
python finetune.py \
    --base_model='decapoda-research/llama-7b-hf' \
    --data_path='IlyaGusev/ru_turbo_alpaca' \
    --num_epochs=10 \
    --cutoff_len=512 \
    --group_by_length \
    --output_dir='./lora-alpaca' \
    --lora_target_modules='[q_proj,k_proj,v_proj,o_proj]' \
    --lora_r=16 \
    --val_set_size=0 \
    --micro_batch_size=24


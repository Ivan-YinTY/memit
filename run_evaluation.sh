#! /bin/bash
#SBATCH -J EDIT
#SBATCH -p A800
#SBATCH -n 2
#SBATCH -N 1
#SBATCH --gres=gpu:a800:1

python -m experiments.evaluate \
    --alg_name=MEMIT \
    --model_name=gpt2-xl \
    --hparams_fname=gpt2-xl.json \
    --num_edits=10000 \
    --use_cache
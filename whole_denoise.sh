#!/bin/bash

#SBATCH --job-name=denoise_whole
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=64G
#SBATCH --time=10:00:00
#SBATCH --partition=epyc-64
#SBATCH --output=slurm-%J.out
#SBATCH --error=slurm-%J.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=asrari@usc.edu

conda activate /project/thrash_89/tools/qiime2-amplicon-2023.9

qiime dada2 denoise-paired \
--i-demultiplexed-seqs demux_whole_abdomen.qza \
--p-trim-left-f 13 \
--p-trim-left-r 13 \
--p-trunc-len-f 150 \
--p-trunc-len-r 150 \
--o-table table_whole_abdomen.qza \
--o-representative-sequences rep_seqs_whole_abdomen.qza \
--o-denoising-stats denoising_stats_whole_abdomen.qza 

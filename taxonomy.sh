#!/bin/bash

#SBATCH --job-name=taxonomy
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=64G
#SBATCH --time=10:00:00
#SBATCH --partition=epyc-64
#SBATCH --output=slurm-%J.out
#SBATCH --error=slurm-%J.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=asrari@usc.edu


qiime feature-classifier classify-sklearn \
--i-classifier gtdb_classifier.qza \
--i-reads denoise/rep_seqs_final.qza \
--o-classification new_combined_taxonomy.qza 

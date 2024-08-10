#!/bin/bash

#SBATCH --job-name=mafft
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=64G
#SBATCH --time=10:00:00
#SBATCH --partition=epyc-64
#SBATCH --output=slurm-%J.out
#SBATCH --error=slurm-%J.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=asrari@usc.edu


qiime phylogeny align-to-tree-mafft-fasttree \
--i-sequences denoise/rep_seqs_final.qza \
--o-alignment mafft/aligned-rep-seqs.qza \
--o-masked-alignment mafft/masked-alignment-rep-seqs.qza \
--o-tree mafft/unrooted-tree.qza \
--o-rooted-tree mafft/rooted-tree.qza

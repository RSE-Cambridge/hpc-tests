#!/bin/bash
#SBATCH --job-name="rfm_Cp2k_H2O_256_8_job"
#SBATCH --ntasks=256
#SBATCH --ntasks-per-node=32
#SBATCH --output=rfm_Cp2k_H2O_256_8_job.out
#SBATCH --error=rfm_Cp2k_H2O_256_8_job.err
#SBATCH --exclusive
module load gcc/9.3.0-5abm3xg
module load openmpi/4.0.3-qpsxmnc
export SLURM_MPI_TYPE=pmix_v2
export UCX_NET_DEVICES=mlx5_0:1
module load cp2k/7.1-akb54dx
time \
srun cp2k.popt H2O-256.inp

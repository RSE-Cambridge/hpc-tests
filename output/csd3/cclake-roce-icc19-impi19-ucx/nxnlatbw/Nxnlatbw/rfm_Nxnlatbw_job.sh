#!/bin/bash
#SBATCH --job-name="rfm_Nxnlatbw_job"
#SBATCH --ntasks=56
#SBATCH --ntasks-per-node=1
#SBATCH --output=rfm_Nxnlatbw_job.out
#SBATCH --error=rfm_Nxnlatbw_job.err
#SBATCH --time=1:0:0
#SBATCH --exclusive
#SBATCH --partition=cclake
#SBATCH --account=support-cpu
#SBATCH --exclude=cpu-p-[1-280,337-672]
module load rhel7/default-ccl
export UCX_NET_DEVICES=mlx5_1:1
srun nxnlatbw

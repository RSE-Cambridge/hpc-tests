#!/bin/bash
#SBATCH --job-name="rfm_IMB_Biband_8_job"
#SBATCH --ntasks=8
#SBATCH --ntasks-per-node=4
#SBATCH --output=rfm_IMB_Biband_8_job.out
#SBATCH --error=rfm_IMB_Biband_8_job.err
#SBATCH --time=0:10:0
#SBATCH --exclusive
module load gcc/9.3.0-5abm3xg
module load intel-mpi/2019.7.217-bzs5ocr
export FI_VERBS_IFACE=ib
module load intel-mpi-benchmarks/2019.5-w54huiw
mpirun -np 8 IMB-MPI1 biband -npmin 8

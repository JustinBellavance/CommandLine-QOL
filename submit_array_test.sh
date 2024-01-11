#!/bin/bash
#SBATCH --time=00:02:00
#SBATCH --account=def-gsarah
#SBATCH --array=1-8
#SBATCH --mail-user=<your email here>
#SBATCH --mail-type=END

echo -e "this is job $SLURM_ARRAY_TASK_ID from array script" > output${SLURM_ARRAY_TASK_ID}.txt
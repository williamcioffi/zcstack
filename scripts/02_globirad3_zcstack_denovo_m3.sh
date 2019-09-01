#!/bin/bash
#SBATCH --job-name=globirad3_zcstack_denovo_m3
#SBATCH --output=/work/wrc14/globirad3_zcstack_working/std/globirad3_zcstack_denovo_m3.out
#SBATCH --error=/work/wrc14//globirad3_zcstack_working/std/globirad3_zcstack_denovo_m3.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mail-user=wrc14@duke.edu
#SBATCH --mail-type=ALL

module load Stacks/2.1

# M is minimum number of reads to form a stack
# n is maximum number of errors to form a stack
# -o specifies output directory
# --popmap specifies a tab delimited text files with names of all samples and pop 1, 2, etc. do need if all one pop
# --samples specifies where the fastq is
# -T specifies the number of threads to use
# --paired tells it we're doing paired

denovo_map.pl -M 3 -n 3 -o /work/wrc14/globirad3_zcstack_working/output_stack --popmap /work/wrc14/globirad3_zcstack_working/meta/globirad3_zcstack_popmap --samples /work/wrc14/globirad3_zcstack_working/fastq -T 12 --paired


#!/bin/bash
#
#SBATCH --job-name=globirad3_zcstack_populations
#SBATCH --output=/work/wrc14/globirad3_zcstack_working/std/globirad3_zcstack_populations.out
#SBATCH --error=/work/wrc14/globirad3_zcstack_working/std/globirad3_zcstack_populations.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mail-user=wrc14@duke.edu
#SBATCH --mail-type=ALL

module load Stacks/2.1

# -P import path
# -O output path
# --vcf output vcf
# -t 8 threads
# --genepop different kind of output file
# --write_single_snp output one snp per locus (1st snp per locus) you can also do --write_random_snp and that will pick a random snp in the locus but the first one is probably just as random???
# --min_mac minimum minor allele count for pdubs we used 3. for zc maybe 1 or 2?
# --max_obs_het 0.6 what it sounds like
# -r 0.8 minimum p(of samples/animals that have that loci) per population maybe if multiple. for pdubs we used 0.8 for zcs we only have 10 samples so maybe lower it a tiny bit. a lot of loci that have lots of missing data get filtered out for other reasons at another step or this step so it doesn't matter that much in some ways just don't get too crazy.

populations -P /work/wrc14/globirad3_zcstack_working/output_stack -O /work/wrc14/globirad3_zcstack_working/output_populations_tmp --vcf -t 8 --genepop --write_single_snp --min_mac 2 --max_obs_het 0.6 -r 0.7


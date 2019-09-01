#!/bin/bash
#
#SBATCH --job-name=zc_proradtags
#SBATCH --output=/work/wrc14/globirad3_zcstack_working/std/zc_processradtags.out
#SBATCH --error=/work/wrc14/globirad3_zcstack_working/std/zc_processradtags.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mail-user=wrc14@duke.edu
#SBATCH --mail-type=ALL

module load Stacks/2.1

# -P for paired end?
# -p this specifies raw files
# -o is for output 
# -b is for a text files tab delimited with the barcodes
# --renz_1 --renz_2 are the enzymes (it knows!)
# -E phred33 just the encoding of the phred scores either 33 or 64
# -r rescue allows for 1 ambiguous basecall in the barcode
# -c clean discards reads with uncalled bases
# -q clean discards reads with low quality

process_radtags -P -p /work/wrc14/globirad3_zcstack_working/raw -o /work/wrc14/globirad3_zcstack_working/demultiplexed -b /work/wrc14/globirad3_zcstack_working/meta/globirad3_barcodes --renz_1 sbfI --renz_2 mspI -E phred33 -r -c -q


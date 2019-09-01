# convert ped file to coancestry format
# modified from vjf

# load in ped file
ped <- read.delim("../output_plink/globirad3_zcstack_populations_pruned.ped", sep = '', header=FALSE, colClasses = "character", stringsAsFactors = FALSE)

# just grab the sample name and the genotypes
ped_formatted <- data.frame(ped[, 2], apply(ped[, 7:ncol(ped)], 2, as.numeric))

write.table(ped_formatted, file = "../input_coancestry/globirad3_zcstack_coancestry", sep = '\t', row.names = FALSE, col.names = FALSE)

# create genotyping error
# estimated from other globirad plates
err <- t(rep(0.02, length(7:ncol(ped))/2))
write.table(err, file = "../input_coancestry/globirad3_zcstack_genotyping_error", sep = ' ', row.names = FALSE, col.names = FALSE)
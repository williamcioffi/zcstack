# load in matches files
tsv_dir <- "../matches_tsv"
fstacks <- list.files(tsv_dir)

# read in matches file(s)
all_matches <- list()

for(i in 1:length(fstacks)){
  matches <- read.delim(file.path(tsv_dir, fstacks[i]), sep = "\t", skip = 1, header = FALSE)
  names(matches) <- c("catalog_id", "sample_id", "locus_id", "haplotype", "stack_depth", "CIGAR_string")
  all_matches[[i]] <- matches
}

# make a data frame
all_matches_df <- do.call("rbind", all_matches)

# find 10x depth
loci <- unique(all_matches_df$catalog_id)
depth <- aggregate(stack_depth ~ catalog_id + sample_id, data = all_matches_df, sum)
avg_depth <- aggregate(stack_depth ~ catalog_id, data = depth, mean)

# filter
keep_loci <- avg_depth$catalog_id[which(avg_depth$stack_depth >= 10)]

# write out
write.table(keep_loci, "../meta/globirad3_zcstack_whitelist", row.names = FALSE, col.names = FALSE)

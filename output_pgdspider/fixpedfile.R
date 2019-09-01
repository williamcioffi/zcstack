# fix ped file
# ped <- read.table("globirad3_zcstack_populations.snps.ped", header = FALSE, sep = ' ')
map <- read.table("globirad3_zcstack_populations.snps.map", header = FALSE, sep = ' ')

# all on chromosome 1 instead of being on no chromosome
map[, 4] <- 1:nrow(map)
map[, 1] <- 1

write.table(map, "globirad3_zcstack_populations.snps.map", row.names = FALSE, col.names = FALSE, sep = ' ')
#Create map file

popped <-
  read.delim(
    "populations.ped",
    sep = "",
    header = FALSE,
    colClasses = "character"
  )

n <- (ncol(popped) - 6) / 2

popmap <- matrix(rep(0, n * 4), ncol = 4)

popmap[, 3] <- 1:n

write.table(
  popmap,
  sep = "\t",
  file = "populations.map",
  row.names = FALSE,
  col.names = FALSE
)
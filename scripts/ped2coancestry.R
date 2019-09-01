#Convert ped file to coancestry format

options(stringsAsFactors = FALSE)

raw<-read.delim("original2018p.ped", sep="", header=FALSE, colClasses = 
                  "character")

check<-as.matrix(raw[,c(7:ncol(raw))])

check[check=="A"]<-1
check[check=="T"]<-2
check[check=="G"]<-3
check[check=="C"]<-4

check<-apply(check, 2, as.numeric)

check<-cbind(raw[,2],as.data.frame(check))

write.table(check, sep="\t", file="coancestry_version.txt", row.names = FALSE, col.names = FALSE)

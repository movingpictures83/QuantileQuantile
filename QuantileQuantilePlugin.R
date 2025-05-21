### R code from vignette source 'EBSeq_Vignette.Rnw'

###################################################
### code chunk number 1: EBSeq_Vignette.Rnw:172-173
###################################################
library(EBSeq)


input <- function(inputfile) {
   EBOut <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
#par(mfrow=c(1,2))
pdf(outputfile)
QQP(EBOut)
write.csv(EBOut$PPMat, paste(outputfile, "csv", sep="."))
}


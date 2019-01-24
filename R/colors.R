
library(gplots)
library(stringr)

cols <- colors()
colsHEX <- col2hex(cols)
colsString <- rep(NA, length(cols))

for (i in 1:length(cols)) {
  colsString[i] <- paste0("\\definecolor{", cols[i], "}{HTML}{",
                          str_sub(colsHEX[i], 2, 7), "}")
}

myfile <- file("r-colors.tex")
writeLines(colsString, myfile)
close(myfile)

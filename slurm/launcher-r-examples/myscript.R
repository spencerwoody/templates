
library(magrittr)

## Generate number, hostname, and job number (padded with zeros)
mynum <- rbinom(1, 100, 0.5)
myhost <- system("hostname", intern = TRUE)
myjob <- system("echo $LAUNCHER_JID", intern = TRUE)

cat(as.character(mynum))
cat(as.character(myjob))

myjob <- stringr::str_pad(as.numeric(myjob), 3, "0", side = "left")

## myjob <- myjob %>%
##   as.numeric() %>%
##   stringr::str_pad(3, "0")

## File name
myfilename <- sprintf("output/mydata-%s-%s.csv", myjob, myhost)

cat(myfilename)

## Create the dataframe
mydf <- data.frame(num = mynum, job = myjob, host = myhost)

cat(as.character(mydf))

## Save the dataframe
## Can also use save()
write.csv(mydf, file = myfilename)


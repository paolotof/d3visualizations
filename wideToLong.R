dat <- read.csv('~/Dropbox/coursera/DataVisualization/Assignment/data/ExcelFormattedGISTEMPData2CSV.csv', 
	header = TRUE, check.names = FALSE)
	
dat1 <- stack(dat)	
year <- dat1$values[dat1$ind == 'Year']
dat1 <- dat1[dat1$ind != 'Year',]
nreps <- length(names(dat)) - 1 # year goes out
dat2 <- data.frame(key = dat1$ind, value = dat1$values, date = rep(year, nreps))
write.csv(dat2, file='data/outfile.csv', row.names = FALSE, quote = FALSE)
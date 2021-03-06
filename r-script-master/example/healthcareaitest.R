library(healthcareai)
dates <- c(as.Date('2012-01-01'),as.Date('2012-01-02'),as.Date('2012-02-01'),
          as.Date('2012-03-01'),as.Date('2012-04-01'),as.Date('2012-05-01'),
          as.Date('2012-06-01'),as.Date('2012-06-02'))
y1 <- c(0,1,2,6,8,13,14,16)               # large positive
y2 <- c(.8,1,1.2,1.2,1.2,1.3,1.3,1.5)     # small positive
y3 <- c(1,0,-2,-2,-4,-5,-7,-8)            # big negative
y4 <- c(.5,0,-.5,-.5,-.5,-.5,-.6,0)       # small negative
gender <- c('M','F','F','F','F','F','F','F')
df <- data.frame(dates,y1,y2,y3,y4,gender)

dfResult <- findTrends(df = df,
                      dateCol = 'dates',
                      groupbyCol = 'gender')
dfResult
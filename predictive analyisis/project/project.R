data = read.csv('./predictive analyisis/project/data.csv', header = TRUE, sep = ',')
data = data[,c("batsman","bowler","total_run")]
head(data,10)


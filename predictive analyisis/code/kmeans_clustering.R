data(USArrests)


df = scale(USArrests)

US <- na.omit(USArrests)


result <- kmeans(USArrests,4,nstars =25)
print(result)
wordcloud(df)

head(demoFreq)
dim(demoFreq)
par(mar=c(0,0,0,0))
wordcloud2(demoFreq, size = 2, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)
#color vector
colorvec2 = rep(c('red', 'skyblue'), length.out = nrow(demoFreq))
wordcloud2

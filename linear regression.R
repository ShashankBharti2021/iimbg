#simple linear regression

women
head(women)
plot(women)
cor(women)
cor(women$height, women$weight)
cov(women$height, women$weight)

model = lm(weight~ height, data = women)
model
summary(model)
range(women$height)
residuals(model)
par(mfrow=c(2,2))
plot(model)

predict(model, new= data.frame(height=77))

#mtcars
head(mtcars)
model2 = lm(mpg ~ wt + hp + qsec, data = mtcars)
summary(model2)

model3 = lm(mpg ~ wt, data = mtcars)
summary(model3)

#library(olsrr)
fit = lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
k = ols_step_all_possible(fit)
plot(k)

#load the data
#missing values
#correlation between IV
#form linear model
#check for model summary - F stat, R2, coefficients, P value
#check for assumptions
#predict & find accuracy
summary(model)

#missing values

x = c(3,5,4,5)
x
mean(x)
x1 = c(4,5,,6)
x1
x2 = c(5,6,NA,8)
x2
mean(x2)
mean(x2, na.rm=T)
is.na(x2)
sum(is.na(x2))
install.packages('VIM')
library(VIM)
data(sleep)
str(sleep)
summary(sleep)
names(sleep)
is.na(sleep$Dream)
sum(is.na(sleep$Dream))
colSums(is.na(sleep))
rowSums(is.na(sleep))
complete.cases(sleep)
sleep[complete.cases(sleep),]

#1
library(datasets)
data("infert")

#2
?infert

#3
class(infert$case)
summary(infert$case)
class(infert$induced)
summary(infert$induced)
class(infert$spontaneous)
summary(infert$spontaneous)

infert$case <- factor(infert$case)
infert$induced <- factor(infert$induced)
infert$spontaneous <- factor(infert$spontaneous)

class(infert$case)
summary(infert$case)
class(infert$induced)
summary(infert$induced)
class(infert$spontaneous)
summary(infert$spontaneous)

#4
#Revise cada columna

#5
#education
type.freq <- table(infert$education)
type.freq
#relative frequency
type.rel.freq <- type.freq / sum(type.freq)
type.rel.freq
#spontaneous
type.freq <- table(infert$spontaneous)
type.freq
#relative frequency
type.rel.freq <- type.freq / sum(type.freq)
type.rel.freq

#6
barplot(type.freq, main = "number of prior spontaneous abortions", ylab="Frequency")
pie(type.rel.freq, main = "number of prior spontaneous abortions")

#8
hist(infert$age, xlab = "Parity", ylab="Frequency")
boxplot(infert$age, main = "Boxplot of age")

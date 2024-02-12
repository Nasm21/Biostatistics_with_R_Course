#========================================================
#R_basics
#========================================================

#vectors
x <- c(2, 3, 5, 5, 7, 10, 12)

#functions with vectors
x
sum(x)
mean(x)
sd(x)

#help
?sd
help(sd)

#Select elements in a vector
x[1]
x[5]
#select all but
x[-4]

#Character vector
sex <- c("male", "female", "female", "male", "female")
sex[3]

#Logical vector
is.healthy <- c(TRUE, TRUE, FALSE, TRUE, FALSE)
is.healthy

#Matrices
age <- c(60, 43, 72, 35, 47)
BMI <- c(28, 32, 21, 27, 35)
bp <- c(124, 145, 127, 133, 140)
data.1 = cbind(age, BMI, bp)
data.1
dim(data.1)

data.2 = rbind(age, BMI, bp)
data.2

#column and row Names
colnames(data.1)
rownames(data.1) <- c("subject1", "subject2", "subject3", "subject4", "subject5")
data.1

#Selection in a matrix
data.1[3, 1]
data.1[2, ]
data.1[, 2]

#Dataframes
data.df <- data.frame(age, sex, is.healthy, BMI, bp)
data.df

#Selection in data frames
data.df[3, 4]
data.df[, "age"]
data.df$age
data.df$BMI[4]
data.df$sex[2]

#selection with conditionals
data.df$age > 55
data.df[data.df$age > 55,]

data.df$sex == "female"
data.df[data.df$sex == "female",]

data.df$age > 55 & data.df$sex == "female"
data.df[data.df$age > 55 & data.df$sex == "female",]

data.df$age > 55 | data.df$sex == "female"
data.df[data.df$age > 55 | data.df$sex == "female",]

data.df$age > 55 & data.df$age < 70
data.df[data.df$age > 55 & data.df$age < 70,]

#Importing Data
library(readr)
BodyTemperature <- read_table("BodyTemperature.txt")
#BodyTemperature <- read.table(file = "BodyTemperature.txt",header = TRUE, sep = " ")

#Selection of rows and columns
head(BodyTemperature)
names(BodyTemperature)
BodyTemperature$Age[1:3]
BodyTemperature[1:3, 2:4]
a <- BodyTemperature[1:3, 2:4]
BodyTemperature[BodyTemperature$HeartRate >= 80,]
HR_over_80 <- BodyTemperature[BodyTemperature$HeartRate >= 80,]

#Lists
our.study <- list(data = BodyTemperature,
                  investigators = c("Smith", "Jackson", "Clark"), 
                  students = c("Steve", "Mary"))
length(our.study)

#Selection in a list
our.study$investigator
our.study[[2]]

our.study[[2]][3]
our.study[[1]][2:4, ]

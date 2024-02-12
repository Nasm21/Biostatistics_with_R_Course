#1
library(readr)
Protein <- read_table("Protein.txt")

#2
boxplot(Protein$RedMeat, main = "Red meat consumption")
#order by Red Meat column
order(-Protein[["RedMeat"]])[1:2]
Protein[order(-Protein[["RedMeat"]])[1:2],]

#3
boxplot(Protein$Eggs, main = "Eggs consumption")
#order by Eggs column
order(-Protein[["Eggs"]], decreasing = TRUE)[1:3]
Protein[order(-Protein[["Eggs"]], decreasing = TRUE)[1:3],]

#4
cor(Protein[, c("RedMeat", "Milk","Eggs", "Cereals", "Starch")])

#5
pairs(Protein[, c("RedMeat", "Milk","Eggs", "Cereals", "Starch")])



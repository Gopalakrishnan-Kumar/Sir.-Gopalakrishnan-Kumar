getwd()
setwd("D:/GOPAL R PRG FILES")
library("readxl")
df1 = read_excel("Comarative table showing offers from Developers Data Analytics.xls")
df1
write.csv(df1,"submission.csv")
colnames(df1)=make.names(names(df1))


library(randomForest)
model_2 <- randomForest(Best.Builders~ Raheja.Homes+Shabari+Shabari, data = df1, 
                        ntree=500,
                        keep.forest=FALSE, 
                        importance=TRUE)
summary(model_2)
plot(model_2)
write.csv(df1,"submission_2.csv")




library(randomForest)
model_2 <- randomForest(Best.Builders~Viraat +Raheja.Homes data = df1, 
                        ntree=500,
                        keep.forest=FALSE, 
                        importance=TRUE)
summary(model_2)
plot(model_2)
write.csv(df1,"submission_2.csv")


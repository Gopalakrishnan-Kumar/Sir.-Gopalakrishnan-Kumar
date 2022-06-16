getwd()
setwd("D:/")
library("readxl")
df1 = read_excel("Comarative table showing offers from Developers Data Analytics.xls")
df1
write.csv(df1,"submission.csv")
colnames(df1)=make.names(names(df1))
model_1 = lm(Best.Builders~ Viraat, data = df1)
summary(model_1)
library(randomForest)
model_2 <- randomForest(Best.Builders~ Viraat, data = df1, ntree=1000,
                        keep.forest=FALSE, importance=TRUE)
summary(model_2)

model_1 = lm(Best.Builders~ Viraat+Shabari, data = df1)
summary(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Shabari, data = df1)
summary(model_1)
write.csv(df1,"submission_2.csv")


model_1 = lm(Best.Builders~ Best.Builders, data = df1)
summary(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Raheja.Homes, data = df1)
summary(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Raheja.Homes+Shabari, data = df1)
summary(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Raheja.Homes+Viraat, data = df1)
summary(model_1)
plot(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Raheja.Homes+Viraat+Shabari, data = df1)
summary(model_1)
plot(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Raheja.Homes+Viraat+Shabari+Society.Requirement, data = df1)
summary(model_1)
plot(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Viraat+Shabari+Society.Requirement, data = df1)
summary(model_1)
plot(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Shabari+Society.Requirement, data = df1)
summary(model_1)
plot(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Society.Requirement, data = df1)
summary(model_1)
plot(model_1)
write.csv(df1,"submission_2.csv")

model_1 = lm(Best.Builders~ Society.Requirement + Viraat, data = df1)
summary(model_1)
plot(model_1)
write.csv(df1,"submission_2.csv")

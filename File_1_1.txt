getwd()
setwd("D:/")
library("readxl")
df1 = read_excel("Comarative table showing offers from Developers Data Analytics.xls")
df1
write.csv(df1,"submission.csv")
colnames(df1)=make.names(names(df1))
model_1 = glm(Best.Builders~ Viraat, data = df1, family = 'binomial')
summary(model_1)

getwd()
setwd("D:/")
library("readxl")
df1 = read_excel("Comarative table showing offers from Developers Data Analytics.xls")
df1
write.csv(df1,"submission.csv")

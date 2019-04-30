#Import data

library(readxl)
Project_Data_xls <- read_excel("Downloads/Project Data xls.xlsx")
View(Project_Data_xls)

#Variables to do correlation

C1 <- Project_Data_xls[,8]
C2 <- Project_Data_xls[,9]
C3 <- Project_Data_xls[,10]
C4 <- Project_Data_xls[,11]
C5 <- Project_Data_xls[,12]
C6 <- Project_Data_xls[,13]
C7 <- Project_Data_xls[,14]
C8 <- Project_Data_xls[,15]
C9 <- Project_Data_xls[,16]
C10 <- Project_Data_xls[,17]
C11 <- Project_Data_xls[,18]
C12 <- Project_Data_xls[,19]
C13 <- Project_Data_xls[,20]
C14 <- Project_Data_xls[,21]
C15 <- Project_Data_xls[,22]
C16 <- Project_Data_xls[,23]

Corr_Project_Data <- cbind(C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16)

#Correlation table

Correlation_table <- cor(Corr_Project_Data)
Correlation_table

#Correlation plot
Correlation_plot <- corrplot(Correlation_table,method="number")

#Export data to Excel
write.table(Correlation_table, file="/Users/anabela.miranda/Mkt Analytics Project Correlation.csv", row.names=F, sep=",")




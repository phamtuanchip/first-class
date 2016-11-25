 Ð? s? d?ng ngôn ng? R tru?c h?t ta c?n ph?i download và cài d?t R vào máy tính. Ð? t?i ph?n m?m R chúng ta vào d?a ch? sau: 
http://cran.R-project.org 
sau dó ch?n download R tùy theo h? di?u hành dang s? d?ng là windows, Linux hay Mac sau dó click ch?n “install R for the first time” và download R v? máy tính. Khi dã download xong ta ti?n hành gi?i nén file v?a download v? và cài d?t nhu bình thu?ng b?ng cách ?n “Next” cho d?n khi hoàn t?t ch?n “Finish”. Nhu v?y ta có th? s? d?ng ngôn ng? R tùy theo m?c dích c?a mình.

setwd("C:/Users/nhuhoa/Documents/R") # du?ng d?n d?n file d? li?u
datacanbo1 <- read.csv("datacanbo1.csv",header=T) #d?c file d? li?u vào
 attach(datacanbo1) #dính kèm file vào
fix(datacanbo1)# n?u mu?n s?a file d? li?u thì dùng l?nh này, n?u không thì thôi
 library(RWeka)# load thu vi?n Rweka d? có thu?t toán C4.5(J48)
 fit <- J48(QD~.,data=datacanbo1) # g?i d?n thu?t toán J48 trong thu vi?n Rweka 
summary(fit)# hi?n th? t?ng quan v? d? li?u d? doán
dudoan <- predict(fit,datacanbo1[,2:6])# dua vào các thu?c tính d? th?c hi?n phân l?p d? li?u
table(dudoan,datacanbo1$QD)# dua ra b?ng k?t qu? d? doán
plot(fit) #hàm v? cây quy?t d?nh

===============

setwd("D:/projects/first-class/c45/chiHoa/")
datacanbo1 <- read.csv("datacanbo1.csv",header=T)
attach(datacanbo1)
-- fix(datacanbo1)
library(RWeka)
fit <- J48(QD~.,data=datacanbo1)
summary(fit)
dudoan <- predict(fit,datacanbo1[,2:6])
table(dudoan,datacanbo1$QD)
plot(fit)		  
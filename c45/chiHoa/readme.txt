 �? s? d?ng ng�n ng? R tru?c h?t ta c?n ph?i download v� c�i d?t R v�o m�y t�nh. �? t?i ph?n m?m R ch�ng ta v�o d?a ch? sau: 
http://cran.R-project.org 
sau d� ch?n download R t�y theo h? di?u h�nh dang s? d?ng l� windows, Linux hay Mac sau d� click ch?n �install R for the first time� v� download R v? m�y t�nh. Khi d� download xong ta ti?n h�nh gi?i n�n file v?a download v? v� c�i d?t nhu b�nh thu?ng b?ng c�ch ?n �Next� cho d?n khi ho�n t?t ch?n �Finish�. Nhu v?y ta c� th? s? d?ng ng�n ng? R t�y theo m?c d�ch c?a m�nh.

setwd("C:/Users/nhuhoa/Documents/R") # du?ng d?n d?n file d? li?u
datacanbo1 <- read.csv("datacanbo1.csv",header=T) #d?c file d? li?u v�o
 attach(datacanbo1) #d�nh k�m file v�o
fix(datacanbo1)# n?u mu?n s?a file d? li?u th� d�ng l?nh n�y, n?u kh�ng th� th�i
 library(RWeka)# load thu vi?n Rweka d? c� thu?t to�n C4.5(J48)
 fit <- J48(QD~.,data=datacanbo1) # g?i d?n thu?t to�n J48 trong thu vi?n Rweka 
summary(fit)# hi?n th? t?ng quan v? d? li?u d? do�n
dudoan <- predict(fit,datacanbo1[,2:6])# dua v�o c�c thu?c t�nh d? th?c hi?n ph�n l?p d? li?u
table(dudoan,datacanbo1$QD)# dua ra b?ng k?t qu? d? do�n
plot(fit) #h�m v? c�y quy?t d?nh

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
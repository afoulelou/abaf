#La difference entre R et R_Studio
#Les differentes fenetres de R_studio (1-Le console, 2-La fenetre_du_script, 3-l'environnement, 4-fenetre des packages)
#Les packages et leurs installations
getwd()
setwd("C:/Users/Public")
getwd()


install.packages("wooldridge")
library(wooldridge)


install.packages("ggplot2")
library(ggplot2)

install.packages("dplyr")
library(dplyr)


install.packages("xlsx")
library(xlsx)

#Les bases de donnees internes a R
data(wage1)

head(wage1)

edit(wage1)

tail(wage1)


data("economics")
 
data(wage2)

data(wagepan)

data(census2000)

data(fertil2)

data(mroz)

str(mroz)

stripchart(mroz)

#Comment importer ses propres donnees dans R
Af<-read.csv("C:\\Users\\afoul\\OneDrive\\Documents\\economics.csv")

#Les differentes type de donnees
#Les donnees quantitatives et les donnees qualitatives
#I-Les donnees quantitatives
#1-Les donnees quantitatives continues(num)
#2-Les donnees quantitatives discretes(int)
wage1$educ
mean(wage1$educ)

class(wage1$educ)

class(wage1$married)
wage1$married <- as.factor

class(wage1$smsa)
#II-Les donnees qualitatives
#1-Les donnees categorielles
#1.1-Les donnees binaires
#1.2-ordinal nominal
#1.3-nominal
#2-Les donnees strings ou donnees chaines de caracteres
#Les variables des donnees, les attributs
#1-Les variables independantes, les variables explicatives, les variables de controles
#2-La variable dependante, la variable expliquee, la variable reponse
var_dep<-wage1$female
var_ind<-c(wage1$exper, wage1$educ, wage1$nonwhite)
#La concatenation
#Le netoyage des donnees
install.packages("dplyr")
library(dplyr)
#select, range, slice, summarize,
data1<-select(wage1,  1:5)
data2<-select(wage1, wage:female)
data3<-select(wage1, educ, exper,female)
# Pour nettoyer et arranger les donnees select, filter, arrange, mutate, slice#
head(wage2)
names(wage2)
select(wage2, wage, educ, exper, age, married)
data21<-select(wage2, wage, educ, exper, age, married)
data3<-select(wage2, 1:7)
data4<-select(wage2, educ: married)

data5<-wage2[1:10, 1:5]

data51 <- data5[2:5, 3:5]



data6<-wage2[1:3, 1:4]


data7<-wage2[1:4, ]


data8<-wage2[, 1:5]

data81 <- wage2[, ]


data9<-filter(wage2, age>18 &  educ == 10)

data91 <- filter(wage2, age>18 & age <35)



data10<-arrange(wage2, age)


data11<-arrange(wage2, educ)

data12<-mutate(wage2, educ_exp = educ+ exper)


data13<-slice( wage2, 1:5)

data14 <- distinct(wage2, age)

data15 <- wage2[!duplicated(wage2$age),]

min_educ <- min(wage2$educ)
min_educ

mean_age <- mean(wage2$age)
mean_age

 Sorting Male from Customers  
Sex <- Customers[Customers$Sex == "Male",]
View(Sex)

Sex$BirthDate <- as.Date(Sex$BirthDate, format = "%m-%Y-%d")
View(Sex)

cutoffdate1 <- as.Date("01/01/1985", format = "%m/%d/%Y")
cutoffdate2 <- as.Date("12/31/1999", format = "%m/%d/%Y")
cutoffdate1
cutoffdate2
 Talking from cutoffdate1 and cutoffdate2 
millenials <- Sex[Sex$BirthDate >= cutoffdate1 & Sex$BirthDate <= cutoffdate2, ]
View(millenials)
millenials <- college[college$BirthDate >= cutoffdate1 & college$BirthDate <= cutoffdate2, ]
View(millenials)
  Selecting some coloumns from millenials as subset1
subset1 <- millenials[, c(2,6,8,10,11,14)]
View(subset1)
subset1$Sex <- as.factor(subset1$Sex)
View(subset1$Sex)
subset1$Sex
sex <- split(subset1, subset1$Sex)
View(sex)
View(sex$Female)
View(sex$Male)

 Categorical Data 
 
View(Channel)subset1$Channel <- as.factor(subset1$Channel)
View(subset1$Channel)
subset1$Channel

Channel <- split(subset1, subset1$Channel)
View(Channel$SM)
View(Channel$TV)
View(Channel$Referral)
View(Channel$Web)


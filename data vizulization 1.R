repeatFrequency <- table (transactions$Repeat)
repeatFrequency
repeatFrequency <- table (transactions$Sex)
repeatFrequency

genderFrequency <- table(transactions$Sex)
genderFrequency
View(genderFrequency)
prop.table

prop.table(table(transactions$Repeat))
repeatProp <- prop.table(repeatFrequency)
View(repeatProp)


?barplot()
barplot(repeatFrequency, main = "Gender Frequency ", ylab = "No. of customers",)
abline(h=0, col="gray")
?abline
?text
text(0.8,60,"60")
text(2.2,130,"140")

min(transactions$Income)
max(transactions$Income)
length(transactions$Income)
intervals <- seq(0, 250, 50)
# View (intervals)
intervals

?hist

hist(transactions$Income, breaks = intervals, right = 'True', main = "consumer income", xlab = " annual income", ylab = "frequency")

incomecut <- cut(transactions$Income, breaks = intervals, left = 'False', right = 'True', )
incomecut


incomefrequency <- table(incomecut)
View(incomefrequency)



newpromotionTable <- table(promotion$Purchase, promotion$Location)
newpromotionTable
prop.table(newpromotionTable)

?barplot() Staked column chart

barplot(newpromotionTable, col = c("red","green"), xlab = "location" , ylab = "count" , main = "stacked column chart" , ylim = c(0,200))
legend(x="topright",fill ("red","green") , horiz = "True", legend = c("yes","no"), cex = 0.5, inset=0)

?plot scatter chart
plot(transactions$Purchase~transactions$Income, main = "scatter plot", xlab = "income", ylab = "purchase", col = "red", pch = 10)

 
plot(applemerck$Apple~applemerck$Date, main = "Monthly stock prices", xlab = "Date", ylab = "Monthly stock price", type = "l", col = "blue", ylim = c(0,300)) 
lines(applemerck$Merck~applemerck$Date, col = "red", type = "l") 
legend("topleft", legend = c("Apple", "Merck"), col = c("blue", "red"), cex = 0.5, inset =0, lty = 1)

# calculate z scores
growthvalue$zscores <- (growthvalue$Growth -
mean(growthvalue$Growth))/sd(growthvalue$Growth)
growthvalue
View(growthvalue)

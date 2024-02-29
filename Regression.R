Reg1 <- lm(Homemarket$`Market Value`~Homemarket$`Square Feet`, data=Homemarket)
summary(Reg1)


cor(Homemarket$`Market Value`, Homemarket$`Square Feet`)
anova(Reg1)
residreg1 <-resid(Reg1)
stdresidreg1 <- rstandard(Reg1)

plot(residreg1~Homemarket$`Square Feet`, xlab = "squarefeet", ylab = "Residuals")
abline(0,0)

plot(stdresidreg1~Homemarket$`Market Value`, xlab = 'sqarefeet', ylab = "Residuals")
abline(0,0)

plot(fitted(Reg1), residreg1)
plot(density(residreg1))

hist(residreg1)

install.packages("car")
library(car)
residualPlots(Reg1)

#fitted is prediction values

reg2 <-fitted(Reg1)
reg2


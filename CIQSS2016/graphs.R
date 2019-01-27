set.seed(12356)
maxemp=42000
minemp=1
emp <- exp(runif(10000)*(log(maxemp)-log(minemp))+log(minemp))
png("estab-emp-full.png")
plot(density(emp),xlab = "Employment",main="Establishment employment")
dev.off()
png("hist-estab-emp-full.png")
hist(emp,xlab = "Employment",main="Establishment employment",col="darkgreen")
dev.off()


png("estab-emp-1000.png")
plot(density(subset(emp,emp<1000)),xlab = "Employment",main="Establishment employment < 1000")
dev.off()
png("hist-estab-emp-1000.png")
hist(subset(emp,emp<1000),xlab = "Employment",main="Establishment employment < 1000",col="darkgreen")
dev.off()

png("estab-emp-100.png")
plot(density(subset(emp,emp<100)),xlab = "Employment",main="Establishment employment <100")
dev.off()
png("hist-estab-emp-100.png")
hist(subset(emp,emp<100),xlab = "Employment",main="Establishment employment <100",col="darkgreen")
dev.off()

emp <- exp(runif(100)*(log(maxemp)-log(minemp))+log(minemp))
png("hist-estab-emp-over10000.png")
hist(subset(emp,emp>10000),nclass=4,xlab = "Employment",main="Establishment employment >10000",col="darkgreen")
dev.off()

agepreg <- round(subset(emp,emp>10000)/10000,1)+45
png("hist-agepregnancy.png")
hist(agepreg,nclass = 4,xlab="Age",main="Age of first pregnancy",col="darkblue")
dev.off()

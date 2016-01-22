## R Programming module 2 assignment

acs <- read.csv(url("http://stat511.cwick.co.nz/homeworks/acs_or.csv"))

acs$age_husband
acs[1,3]

acs[,3]
a <- subset(acs,age_husband>age_wife)

mean(acs$age_husband)
sd(acs[,3])
sd(acs$age_wife)

hist(acs$bedrooms)

counts <- table(acs$bedrooms)
barplot(counts, main = "bedrooms distribution", xlab="number of bedrooms")

s <- acs[1:100,] 
plot (x = s$age_husband, y= s$age_wife)

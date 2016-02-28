### MODULE07
### Objects

## calling generic function on data

gen25<-read.csv("gen25.csv")
head(gen25)
mean(gen25, na.rm=TRUE)
mean(gen25$WEIGHT,na.rm=TRUE)
mean(gen25$COUNT,na.rm=TRUE)
plot(gen25$COUNT~gen25$SUBLN,na.rm=TRUE)

### determining mode,type, and class of data
### using the entire dataset as a whole

attributes(gen25)
typeof(gen25)
class(gen25)
mode(gen25)


### looking at separate parts

##attributes(gen25$COUNT)
typeof(gen25$COUNT)
class(gen25$COUNT)
mode(gen25$COUNT)


typeof(gen25$SUBLN) 
class(gen25$SUBLN) 
mode(gen25$SUBLN)  ## oddly, mode is listed as numeric.  should be string/alphabetic

typeof(gen25$LINE)
class(gen25$LINE)
mode(gen25$LINE)


typeof(gen25$SURV)
class(gen25$SURV)
mode(gen25$SURV)

### determine if S3 or S4
### install pryr package

otype(gen25)

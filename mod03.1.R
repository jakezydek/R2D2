##### module 03 ######


########################################
#### making matrix and data frame#######
########################################


name <- c("Jeb","Donald","Ted","Marco","Carly","Hillary","Bernie")
abc <- c(4, 62, 51, 21, 2, 14, 15)  ##ABC poll results
nbc <- c(12, 75, 43, 19, 1, 21, 19) ##NBC poll results

poll.0 <- cbind(abc, nbc)
poll.0
poll <- cbind(name, abc, nbc)
poll
poll.df <- data.frame(name, abc, nbc)
poll.df

## find average for each candidate

poll.avg <- apply(poll.df[,2:3], 1, mean)
poll.avg.df <- data.frame (name, poll.avg)
poll.avg.df

#########################################
############ extracting means ###########
#########################################


mean(poll.df)      ## no good
colMeans(poll.df)  ## no good
colMeans(poll.df[,2:3])  ## good
apply(poll.df, 2, mean)   ## no good
apply(poll.df[,2:3], 2, mean)  ## good, only numeric columns may be specified

poll.matrix <- as.matrix(poll.df[,2:3])
poll.matrix

mean(as.matrix(poll.df[,2:3]))   ## matrix treated as vector, one average for all data
mean(poll.matrix)   ## matrix treated as vector, one average for all data

as.data.frame(poll.matrix)
mean(as.data.frame(poll.matrix))  # no good
colMeans(poll.matrix)  ##good   means for each column
apply(poll.matrix,2,mean)  ##good    means for each column


###########################################
#########  matrix multiplication ##########
###########################################


mat3 <- matrix(seq(100,1000,50), nrow=2, ncol=4)
mat3

poll.matrix %*% mat3  ## good
as.matrix(poll.df) %*% mat3   ## no good
as.matrix(poll.df[,2:3]) %*% mat3    ## good


#######################################
######### descriptive stats ###########
#######################################


#variance

var(as.matrix(poll.df[,2:3]))   ## supposed to be for all data
var(poll.matrix)                ## shpuld be for entire data set
apply(poll.matrix,2,var)        ## for each column


#standard deviation

sd(as.matrix(poll.df[,2:3]))    ## should be for entire data set
sd(poll.matrix)                 ## should be for entire data set
apply(poll.matrix,2,sd)        ## for each column

##median

median(as.matrix(poll.df[,2:3]))  ## entire data set
median(poll.matrix)               ## entire data set
apply(poll.matrix,2,median)       ##for each column


#######################################
########### plots #####################
#######################################

## in ggplot2, the y variable (poll resulsts) needs 
## to be in a single column

##making vectors to bind into new data frame

both.poll <- c(abc, nbc)
both.poll

name2 <-c(name, name)
name2

abc.string <- c(paste(replicate(7, "abc")))
abc.string

nbc.string <- c(paste(replicate(7, "nbc")))
nbc.string

abc.nbc <- c(abc.string, nbc.string)

poll2 <- cbind(name2, abc.nbc, both.poll)
poll2.df <- data.frame(name2, abc.nbc, both.poll)
poll2.df

ggplot(poll2.df, aes(x = name2, y = both.poll, fill = abc.nbc)) +
  geom_bar(position=position_dodge(), stat="identity") +
  ggtitle("Poll results for 2016 presidential candidates") +
  ylab("poll results") +
  xlab("candidate") +
  scale_fill_discrete(name="media source")


ggplot(poll.avg.df, aes(x= name, y = poll.avg)) +
  geom_bar(stat = "identity")
  
  

#############################
###### practice #############
#############################


mat2 <- matrix (seq(100,1000,10), nrow=4, ncol=5)
mat2
mean(mat2)
mean(as.data.frame(mat2))  # no good

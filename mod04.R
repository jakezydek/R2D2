## module 04
## writing a function


## generate data

## the function cohens.d() below only recognizes the column headers "score" and "kind"
## so we will use these in the generation of data.  likewise "kind" must have
## factors "treatment" and "control."  Note the format of the resultant data.frame.
## any data of this format can have the funtion cohens.d applied to it

treatment <- rnorm(20,20,3)   ##generate vector 
control <- rnorm(20, 29, 4)    ## generate another vector
score <- c(treatment, control)  ## combine the vecotrs
kind<-c((rep("treatment",20)),(rep("control",20)))  ## name respective vectors in new list
experiment <- data.frame(score,kind)  ##combine the combined vector and list
experiment ## check it out


## this function calculates the cohens.d effect size by combining base R 
## summary statistics and functions.  the data frame to be analysed must have the
## format described above.

cohens.d <- function(x) {
  which.treat<-data.frame(x[kind=="treatment",])
  which.control<- data.frame(x[kind=="control",])
  mean.treat <- mean(which.treat$score)
  mean.control <- mean(which.control$score)
  sd.treat <- sd(which.treat$score)
  sd.control <- sd(which.control$score)
  diff <- abs(mean.treat-mean.control)
  pool.sd <- (sd.treat + sd.control)/2
  c.d <-diff/pool.sd
  print(c.d)
}

cohens.d(experiment)
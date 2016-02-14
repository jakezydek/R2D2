freq<-c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
bloodp<-c(103,87,32,42,59,109,78,205,135,176)
first<-c("bad","bad","bad","bad","good","good","good","good",NA,"bad")
second<-c("low","low","high","high","low","low","high","high","high","high")
final<-c("low","high","low","high","low","high","low","high","high","high")
blood.df<-data.frame(freq,bloodp,first,second,final)

blood.hist <- ggplot(blood.df, aes(freq,fill=final))+
  geom_histogram()

blood.box <- ggplot(blood.df, aes(factor(final),bloodp))+
  geom_boxplot()

## need install and load package gridExtra 

grid.arrange(blood.hist, blood.box, nrow=1, ncol=2)

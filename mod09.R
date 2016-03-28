head(diamonds)

plot(diamonds$price~diamonds$carat,cex=.4,pch=20,col="royalblue1")
price<-diamonds$price
carat<-diamonds$carat
csqr<-carat^2
dlm<-lm(price~carat+csqr)
xgrid<-seq(0,5,length=100)
ygrid<-dlm$coef[1]+dlm$coef[2]*xgrid+dlm$coef[3]*xgrid^2
lines(xgrid,ygrid,col="firebrick2",lwd=3)

xyplot(price~carat,diamonds,
       group=diamonds$color,auto.key=T,
       type=c("p","r"),alpha=.3)

ggplot(diamonds,aes(x=carat,y=price,color=color))+
  geom_point(alpha=.5)+
  geom_smooth(method=lm,se=F,alpha=.3)+
  coord_cartesian(ylim=c(0,20000))
  
roster<-read.table("https://cluster13-files.instructure.com/courses/1164768/files/52433726/course%20files/Dataset.txt?download=1&inline=1&sf_verifier=1f6190008484d5b0b6539102248c53db&ts=1457213255&user_id=971408",sep=",",header=T)  ## This url will not operate for further trials
roster
average.ages<-ddply(roster,"Sex",summarise,average.age=mean(Age))
average.ages
write.csv(average.ages,"aa.csv")
aa<-read.csv("aa.csv")
aa
roster.index<-grep("i",roster$Name,ignore.case=T)
roster.index
name.contains.i<-data.frame(roster[c(roster.index),])
name.contains.i
write.csv(name.contains.i,"nci.csv")
attributes(name.contains.i)
#EmpId vector
empid = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
empid

#Age vector
age = c(22,23,19,42,51,26,27,48,39,19,61,42,24,24,35)
age

#gender Vector
gender = c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
gender

#Status Vector
status = c(1,2,1,2,1,2,1,2,1,1,1,2,2,1,1)
status

empinfo=data.frame(empid,age,gender,status)
empinfo

#Labeling Character to numeric
empinfo$gender=factor(empinfo$gender, labels=c("male","female"))
empinfo$gender
empinfo$status=factor(empinfo$status, labels=c("faculty","student"))
empinfo$status
empinfo

#Extract the male data
male=subset(empinfo,empinfo$gender=="male")
male

#Extract the female data
female=subset(empinfo,empinfo$gender=="female")
female

#summary statistics for the empinfo data
summary(empinfo)

#summary statistics for the male, female and age data
summary(male)
summary(female)
summary(age)

#creating table (one-way) Either row or column
table1=table(empinfo$gender)
table1
table2=table(empinfo$status)
table2

#creating table (two-way)# rows and column represent 2 different things together
table3=table(empinfo$gender, empinfo$status)
table3

#Graphical representation(Scatter plot)
plot(empinfo$age,type="l", main="Age of Employee", xlab="empid", ylab="age in years",col="red")

#Graphical representation(Pie Chart)
pie(table1)

#Graphical representation(grouped bar plot)
barplot(table3,beside=T, xlim=c(1,15),ylim=c(0,5),col=c("blue","red"))
legend("topright", legend=rownames(table3),fill=c('blue','red'),bty="s")

#Graphical Representation (Stacked Bar Plot)
barplot(table3, beside=F, xlim=c(1,15),ylim=c(0,5),col=c("green","orange"))
legend("topright", legend=rownames(table3),fill=c('green','orange'),bty="n")

#Graphical Representation (Box Plot)
boxplot(empinfo$age~empinfo$status,col=c('red','cyan'))

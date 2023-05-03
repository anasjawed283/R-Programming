empid = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
empid
age = c(22,23,19,42,51,26,27,48,39,19,61,42,24,24,35)
age
gender = c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
gender
status = c(1,2,1,2,1,2,1,2,1,1,1,2,2,1,1)
status

empinfo=data.frame(empid,age,gender,status)
empinfo

empinfo$gender=factor(empinfo$gender, labels=c("male","female"))
empinfo$gender

empinfo$status=factor(empinfo$status, labels=c("faculty","student"))
empinfo$status
empinfo

empinfo$gender=factor(empinfo$gender, labels=c("male","female"))
empinfo$gender

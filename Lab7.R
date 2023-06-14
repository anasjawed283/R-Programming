#fitting the probability distribution:
#Four coins=s are tossed simultaneously
#{iii} at most 2 heads (iv) Expectation

#number of trials
n=4
n
#probability of success =0.02
p=0.02
p
#(i) probability of getting exactly 2 
dbinom(2,n,p)
#(ii) probability of getting at least 2
sum(dbinom(2:4, n, p))
#or
1-pbinom(1,n,p)
#(iii) probability of getting almost 2
sum(dbinom(0:2,n,p))
#or
pbinom(2,n,p)
#9iv) Expectation of x
x=0:n
px=dbinom(x,n,p)
Ex=weighted.mean(x,px)
Ex
#(v) variance of x

Varx=weighted.mean(x*x, px)-(weighted.mean(x, px))
Varx
plot(x,px, type="h", xlab="values of x", ylab="values of Y")
qbnom(0.9999685, 4, 0.02, lower.tail=FALSE)


A <- matrix(1:100,nrow=6)
B <- matrix(1:1000,nrow=6)
A
## finding transpose

A.t<-t(A)
A.t
B.t<-t(B)
B.t

## Multiplying a matrix by a vector
## vector length = n number of columns of matrix

c <- runif(6,0,10)
c
A.t
A.t*c ## does not give dot product
A.t%*%c ## dot product


## another multiplication by vector

X<-matrix(1:25,nrow=5)
X
y<-seq(1,10,2)
X.t<-t(X)
X.t
y
X.t%*%y


## solving for the inverse using the identity

Z<-matrix(sample(1:100,25,replace = TRUE),nrow=5)
Z
ident<-diag(1,5,5)
ident
Z.inv<-solve(Z,ident)
Z.inv


## finding the determinant

det(Z)

## The function makeCacheMatrix will create a square matrix and the function cacheSolve will invert the matrix already created

## These functions use a special type of assignment operator <<-

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set <- function(y)
                {
                x<<-y
                m<<-NULL
                }
        get <- function() x
        setinverse<- function(solve) m <<- solve 
        getinverse <- function() m
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)        
}


## This function will invert the matrix created by the above function and return the inverse of the matrix. 
## If the inverse is already stored in the Cache, then the function will return the inverted matrix available 
## in the Cache                

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getinverse()
        if(!is.null(m))
                {
                message("Retrieving Cached Matrix")
                return(m)
}
        
## Solution of the above r Code

a<- c(1,5,4,3,2,4,3,1,2)
 mat<-matrix(a,3)
 mat

      [,1] [,2] [,3]
[1,]    1    3    3
[2,]    5    2    1
[3,]    4    4    2

 mat_inv<- makeCacheMatrix(mat)
 Cache_mat<-cacheSolve(mat_inv)
 Cache_mat

[,1]       [,2]       [,3]
[1,]  1.423557e-17  0.3333333 -0.1666667
[2,] -3.333333e-01 -0.5555556  0.7777778
[3,]  6.666667e-01  0.4444444 -0.7222222

cacheSolve(mat_inv)
Retrieving Cached Matrix

          [,1]       [,2]       [,3]
[1,]  1.423557e-17  0.3333333 -0.1666667
[2,] -3.333333e-01 -0.5555556  0.7777778
[3,]  6.666667e-01  0.4444444 -0.7222222
        

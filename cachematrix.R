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
        
        

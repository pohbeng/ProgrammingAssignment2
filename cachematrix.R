## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will take in a matrix, and set the vector/matrix x to the input matrix. It will also default the Inverse matrix variable m to NULL.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}

## Write a short comment describing this function
## This function will take in a matrix variable as declare above, and compute the inverse matrix using R-Prog function solve(). It will update the Inverse Matrix variable.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}

## Put comments here that give an overall description of what your
## functions do

<<<<<<< HEAD
## creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
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


## finds inverse of x, retrieves it from cahce if already computed

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
                message('getting cached data')
                return(m)
        }
        
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m
=======
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
        ## Return a matrix that is the inverse of 'x'
}

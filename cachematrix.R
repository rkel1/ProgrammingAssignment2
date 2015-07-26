## Set of functions that will find the inverse of a matrix object which
## can be cached to speed future computations

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


## finds inverse of x, retrieves it from cache if already computed

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
}

## This code caches the inverse of a matrix.

## The below function creates matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {			
                x <<- y				#sets the value
                m <<- NULL	
        }

        get <- function() 			#extracts the value for x
	  x

        setinverse <- function(inverse)	#sets the inverse of x 
        m <<- inverse

        getinverse <- function() 		#output the inverse of x
        m

        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)	#form a list and return 

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getinverse()		   #query the x matrix cache
        if(!is.null(m)) {
        message("getting cached data")
        return(m)				   #returns the cache if there is one
        }
        data <- x$get()
        m <- solve(data, ...)          #calculates the cache if not found
        x$setinverse(m)			   #save the result back to x's cache
        m
        ## Return a matrix that is the inverse of 'x'
}
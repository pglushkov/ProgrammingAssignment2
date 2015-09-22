## Put comments here that give an overall description of what your
## functions do

## Funtion 'makeCacheMatrix(x)'
#
#
# ARGUMENTS:
# x - square matrix 
#
# OUTPUT:
# Object, containing input matrix and methods to
# to work with that matrix and its inverse value.

makeCacheMatrix <- function(x = matrix()) {
        Inv <- NULL
        set <- function(y) {
                x <<- y
                Inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) Inv <<- inverse
        getinverse <- function() Inv 
        list(set = set, get = get,
             setinverse = setinverse ,
             getinverse = getinverse )
}


## Funtion 'cacheSolve(x)'
#
# ARGUMENTS:
# x - object, returned by 'makeCahceMatrix(...)'
#
# OUTPUT:
# Inverse value of the matrix, containted inside
# the input object.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  Inv <- x$getinverse()
        if(!is.null(Inv)) {
                message("getting cached data");
                return(Inv);
        }
        data <- x$get()
        Inv <- solve(data, ...)
        x$setinverse(Inv )
        Inv
}


## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
   i <- NULL
   
   setInverse <- function(y){
      i <<- y
   }
   
   getInverse <- function() i
   
   getOriginal <- function() x
   
   ## Returns the "matrix" with the functions.
   list(setInverse = setInverse,
        getInverse = getInverse,
        getOriginal = getOriginal)
}

# makeCacheMatrix test
# myMatrix <- matrix(1:8,3,3)
# myMatrix
# myR$setInverse(myMatrix)
# myR$getInverse()
# myR$getOriginal()

##  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##  If the inverse has already been calculated (and the matrix has not changed), 
##  then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    
    i <- x$getInverse()
    
    if(!is.null(i)) {
        message("getting cached data") 
        return(i)
    }
    
    m <- x$getOriginal()
    i <- solve(m)
    x$setInverse(i)
    ## Returns a matrix that is the inverse of 'x'.
    i    
}

myMatrix <- makeCacheMatrix(matrix(1:8,3,3))
myMatrix
cacheSolve(myMatrix)





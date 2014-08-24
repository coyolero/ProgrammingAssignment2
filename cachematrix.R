## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
   i <- NULL
   
   setInverse <- function(y){
      i <<- solve(y)
   }
   
   getInverse <- function() i
   
   getOriginal <- function() x
   
   list(setInverse = setInverse,
        getInverse = getInverse,
        getOriginal = getOriginal)
}

##  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##  If the inverse has already been calculated (and the matrix has not changed), 
##  then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


myMatrix <- matrix(1:8,3,3)
myMatrix

# debug(makeCacheMatrix)
myR <- makeCacheMatrix(myMatrix)


myR$setInverse(myMatrix)
myR$getInverse()
myR$getOriginal()

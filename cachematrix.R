## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   
   setInverse <- function(y){
      x <<- solve(y)
   }
   
   get <- function() x
   
   matrix(get)
}

makeCacheMatrix


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

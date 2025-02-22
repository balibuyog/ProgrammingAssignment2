## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Benjamin comment - this function creates a matrix object
## that can store a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL # Benjamin comment - initialises the cache for the inverse
  set <- function(y) {
    x <<- y # Benjamin comment - stores the new matrix
    inv <<- NULL # Benjamin comment - resets cached inverse
  }
  get <- function() x # Benjamin comment - retrieves matrix
  setInverse <- function(inverse) inv <<- inverse #Benjamin comment - stores inverse in cache
  getInverse <- function() inv # Benjamin comment - retrieve cached inverse
  
  list(set = set, get = get,
       setInverse = setInverse, # Benjamin comment - allows user to update matrix
       getInverse = getInverse) # Benjamin comment - returns the stored matrix
}


## Write a short comment describing this function

## Benjamin comment - computes the inverse of the matrix
## if inverse exists, it will retrieve the cache

cacheSolve <- function(x, ...) {
  inv <- x$getInverse() # Benjamin comment - retrieve cached inverse
  if(!is.null(inv)) {
    message("getting cached inverse")
    return(inv)
  }
  
  matx <- x$get() #Benjamin comment - retrieves a matrix
  inv <- solve(matx, ...) #Benjamin comment - computes inverse
  x$setInverse(inv) #Benjamin comment - cache inverse
  inv
  ## Return a matrix that is the inverse of 'x'
}


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Set the value of the matrix an reset the cache, inverse the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  # Set the value of the matrix and reset the cache
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  
  # Set the value of the inverse
  setmean <- function(inverse) m <<- inverse
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
} 


## Write a short comment describing this function
## Use of cached inverse matrix if exists
cacheSolve <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setmean(m)
    m
}
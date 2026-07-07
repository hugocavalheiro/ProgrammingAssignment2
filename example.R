## Ful submission
## Example of use
## Load the file with functions
source("cachematrix.R")

my_matrix <- matrix(c(1,2,3,4,0,6,7,8,9), nrow = 3)


cacheMatrix <- makeCacheMatrix(my_matrix)
# submit to create the matrix
cacheSolve(cacheMatrix)
# retrieve and display the message "retrieving cached data"
cacheSolve(cacheMatrix)
# change the matrix (its clear the cache)
cacheMatrix$set(matrix(c(8,7,6,5,4,0,0,1,9), nrow = 3))
# recalculates and displays the new inverse matrix, since it has been modified.
cacheSolve(cacheMatrix)
# Output: The new inverse matrix.

#call again tho show the message "retrieving cached data"
cacheSolve(cacheMatrix)
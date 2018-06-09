## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invmatrix <- NULL
  setmatrix <- function (y) {
    x <<- y
    invmatrix <<- NULL
  }

  getmatrix <- function() x
  
  setinverse <- function(inverse) invmatrix <<- inverse
  getinverse <- function() invmatrix
  
  list(setmatrix = setmatrix, getmatrix = getmatrix, 
       setinverse = setinverse, getinverse = getinverse )
  
}


## Write a short comment describing this function


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix function creates a matrix object that can cache its inverse
## it gets a matrix as an input, sets and gets the value of the matrix as well as
## its inverse 

makeCacheMatrix <- function(x = matrix()) {   ##matrix as an input
  invmatrix <- NULL
  setmatrix <- function (y) { ## sets the value of the matrix
    x <<- y
    invmatrix <<- NULL
  }

  getmatrix <- function() x   ##gets the value of the matrix
  setinverse <- function(inverse) invmatrix <<- inverse    ##sets the value of the inverse matrix
  getinverse <- function() invmatrix   ##gets the value of the inverse matrix
  
  list(setmatrix = setmatrix, getmatrix = getmatrix, 
       setinverse = setinverse, getinverse = getinverse )
  
}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  invmatrix <- x$getinverse()
  if(!is.null(invmatrix)) {
    message ("Getting Cached Matrix")
    return(invmatrix)  ##returns the inv matrix value
  }
  
  matrixdata <- x$getmatrix()  ##gets the orig matrix
  invmatrix <- solve(matrixdata, ...)  ##solves for the inverse of matrix data
  x$setinverse(invmatrix) ##sets the inv matrix value
  return(invmatrix)  ##returns the inv matrix
}

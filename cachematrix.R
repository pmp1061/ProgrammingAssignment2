## 
##  makeCacheMatrix function set and get the matrix,also set and get inverse of the matrix



makeCacheMatrix <- function(x = matrix()) {
  
  
  matrix_inverse <- NULL
  
  
  # set and get methods for given matrix
  getMatrix=function() {
    x
  }
  
  setMatrix <- function(y) {
    x <<- y
    matrix_inverse <<- NULL
  }
  
  
  # set and get methods for inverse matrix
  
  setMatrixInverse <- function( inverse) {
    matrix_inverse <- inverse
  }
  
  getMatrixInverse <- function() {
    matrix_inverse
  }
  
  # list of functions
  list(setMatrix = setMatrix, getMatrix = getMatrix ,setMatrixInverse = setMatrixInverse, getMatrixInverse =getMatrixInverse )
  
  
  
  

}


## 
##  cacheSolve function computes the inverse of the matrix.
##     if the inverse is already calculatedthen it reterives from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  cmatrixinverse <- x$getMatrixInverse()
  
  if (!is.null(cmatrixinverse)) {
    return(cmatrixinverse)
  }
  
  data <- x$getMatrix()
  matrixInverse <- solve(data, ...)
  x$setMatrixInverse(matrixInverse)
  matrixInverse
  
  
}

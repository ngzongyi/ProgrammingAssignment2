## Put comments here that give an overall description of what your
## functions do

##writing a pair or functions to cache the inverse of a matrix

## Write a short comment describing this function

## makeCacheMatrix is a function which creates a special "matrix" object that can
## cache its inverse for the input (which is an invertible square matrix)

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setinv <- function(inverse) j <<- inverse
  getinv <- function() j 
  list(set = set, get = get, 
       setinv = setinv, 
       getinv = getinv)
}





## Write a short comment describing this function

## cacheSolve is a function which computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getinv()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setinv(j)
  j
}




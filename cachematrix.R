## Put comments here that give an overall description of what your
## functions do

##writing a pair or functions to cache the inverse of a matrix

## Write a short comment describing this function

## makeCacheMatrix is a function which will product an matrix that can
## cache its inverse.

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

## This is a function which will will inverse the output matrix that is returned by previous function.
## If the inverse has already been calculated then the cachesolve should retrieve the inverse from the cache

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




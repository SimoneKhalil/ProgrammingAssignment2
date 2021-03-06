## Put comments here that give an overall description of what your
## functions do

## This is file containing 2 functions.

## The first is called makeCacheMatrix: this function creates a special matrix
## and calculates its inverse and saves it to cache

## The second function is called cacheSolve: It gives the inverse of a matrix if
## it has already been calculated it retrieves it from the cache and if not it 
## gets the inverse of the matrix and saves it to the cache 

## Write a short comment describing this function

## makeCacheMatrix : This function creates a special "matrix" object that can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

## cacheSolve: This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m

  }

## The functions cache the inverse of the matrix

## This function does the following:
## Set the matrix
## Get the matrix
## Set the inverse of the matrix
## Get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list (set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## This function returns the inverse of the matrix
## If the matrix has no inverse yet, the function will 
## calculate the inverse through the solve() R function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)){
    message ("getting cached data")
    return(i)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}

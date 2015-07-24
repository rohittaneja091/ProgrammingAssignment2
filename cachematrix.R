
## Caching the Inverse of a Matrix

## calculates inverse for the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinv(m)
  m

  
}

## create get set getinv and setinv functions 

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(matrix) m <<- matrix
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## Take a matrix x and make a vector of functions. The functions (1) set x, (2) get x, 
## (3) set the inverse of x, and (4) get the inverse of x.

makeCacheMatrix <- function(x = matrix()) {
  v <- NULL
  set <- function(y) {
    x <<- y
    v <<- NULL
  }
  get <- function() x
  setinv <- function(inv) v <<- inv
  getinv <- function() v
  list(set = set, 
       get = get,
       setinv = setinv,
       getinv
       = getinv)
}


## Use this function to either compute the inverse of a matrix M or 
## retrieve the inverse of M if it has already been computed.
## The input is the vector obtained makeCacheMatrix(M).

cacheSolve <- function(x, ...) {  v <- x$getinv()
if(!is.null(v)) {
  message("getting cached data")
  return(v)
}
data <- x$get()
v <- solve(data, ...)
x$setinv(v)
v
}
}

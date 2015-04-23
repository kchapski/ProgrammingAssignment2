## function creates a matrix that sets the value, gets the value, sets the value of the inverse, and gets the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
  
      m <- NULL
      set <- function (y){
        x<<-y
        m<<- NULL
      }
      get<<-function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function () m
      list(set=set, get=get,
           setinverse=setinverse,
           getinverse=getinverse)
}
  

}


## This function calculates the inverse of the matrix created with the above function.It checks to see if the inverse has first been calculated. If so, it gets the mean from the cache and skips the calculation.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message ("getting cached data")
    return(m)
    
  }
  data <-x$get()
  m<- solve(data,...)
  x$setinverse(m)
  m
  
  
}

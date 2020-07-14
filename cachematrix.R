## Put comments here that give an overall description of what your
## functions do

#Make cache matrix creates a matrix and calculates its inverse, then cache 
#solve see if the inverse matrix already is calculated, if it is just shows 
#the result, if not calculates it and saves the result 

## Write a short comment describing this function

#This function creates a matrix and saves it in the cache, the calls the matrix and solve the inverse

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
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

#This fucntion checks if the matrix provided by the user in the first function 
#is solved or not
#If it is, shows the calculated inverse, if not, calculates it and saves it in the set inverse function

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

m1 <- matrix(c(3, 3.2, 3.5, 3.6), 2, 2)

m2<-makeCacheMatrix(m1)
cacheSolve(m2)

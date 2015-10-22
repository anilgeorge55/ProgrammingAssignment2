## Creating a script that creates two functions that computes inverse of matrix and also caches the inverse if already computed.
## functions do

## Function to create Special vector

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y)
  {
    x<<-y
    m<<-NULL
  }
  
  get<-function() x
  setinverse<-function(inverse) m<<-mean
  getinverse<-function() m
  list(set=set,get=get,getinverse=getinverse,setinverse=setinverse)
  
  
}



## Function to return inverse of matrix

cacheSolve <- function(x, ...) {
  
  
  m<-x$getinverse()
  
  if(!is.null(m))
  {
    message("from cache")
    return(m)
  }
  
  
  
  data<-x$get()
  m<-solve(data)
  x$setinverse(m)
  m
  
}





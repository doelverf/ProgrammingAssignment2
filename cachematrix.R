makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Variable to store the cached inverse
  
  # Function to set a new matrix and clear the cached inverse
  set <- function(y) {
    x <<- y
    inv <<- NULL  # Reset cache when a new matrix is set
  }
  
  # Function to get the stored matrix
  get <- function() x  
  
  # Function to store the computed inverse in the cache
  setInverse <- function(inverse) inv <<- inverse  
  
  # Function to retrieve the cached inverse, if available
  getInverse <- function() inv  
  
  # Return a list of functions to interact with the cached matrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

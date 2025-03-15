makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Variable für die zwischengespeicherte Inverse
  
  set <- function(y) {
    x <<- y
    inv <<- NULL  # Cache löschen, wenn neue Matrix gesetzt wird
  }
  
  get <- function() x  # Gibt die Matrix zurück
  
  setInverse <- function(inverse) inv <<- inverse  # Speichert die Inverse
  
  getInverse <- function() inv  # Gibt die gespeicherte Inverse zurück
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



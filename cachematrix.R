## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {             # this function sets the value of matrix, get the value of matrix
        inverse<- NULL                                  # sets the inverse of matrix and gets the inverse of a matrix        
        set<- function(y){
                x<<-y
                inverse<<-NULL
                }
        get<- function() x

        setInverse<- function(solve) inverse<<- solve
        getInverse<- function() inverse
        list(set = set, get = get,
        setInverse = setInverse, getInverse = getInverse )
}


## below function checks wheather or not the inverse of a matrix is calculated and in cache  
## If the inverse is already calculated , it returns the value from cached, if not it calculated the inverse and returns the same.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<- x$getInverse
        if(!is.null(inverse)){
                message("getting cached data")
                return (inverse)
                }
        data<- x$get_matrix()
        inverse<- solve(data,...)
        x$setInverse(inverse)
        return (inverse)
}

## 
## This is a function that can create a matrix object, which can also cache its inverse, presuming 
## the matrix is square and invertible. 
## 

## this is for R_programming Assigment 2 lexical scoping; to be used with cacheSolve.
#1.     set the value of the matrix
#2.     get the value of the matrix
#3.        set the value of the matrix's inverse
#1.        get the value of the matrix's inverse

makeCacheMatrix <- function(x = matrix()) {
        
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve) 
        
}


## This is a function that can create will cache the inverse of a matrix object, 
## presuming the matrix is square and invertible. 
## 

## this is for R_programming Assigment 2 lexical scoping; to be used with makeCacheMatrix.R

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting matrix inverse from cache")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
        
}

## This is a short function used to cache the inverse of a matrix

## makeCacheMatrix creats a list containing a function to 
## 1. Set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {   
             m = NULL
             set = function (y) { 
             x <<- y
             m <<- NULL      
}
             get = function() x
             setinv = function(inverse) m <<- inverse
             getinv = function() m
             list(set=set, get=get, setinv=setinv, getinv=getinv)
}

## This function returns the inverse of the matrix. It assumes matrix is invertible,it checks if the inverse has already be computed.
## If yes, it returns the result as is; if not, it will compute the inverse. 

cacheSolve <- function(x, ...)  {
            m = x$getinv()
            if(!is.null(m)) {
                 message("getting cached data")
             return(m)
}
            data = x$get()
            m = solve(data, ...)
            x$setinv(m)

             return(m)
}

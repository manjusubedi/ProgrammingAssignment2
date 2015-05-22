### Introduction

This second programming assignment will require you to write an R
function that is able to cache potentially time-consuming computations.
For example, taking the mean of a numeric vector is typically a fast
operation. However, for a very long vector, it may take too long to
compute the mean, especially if it has to be computed repeatedly (e.g.
in a loop). If the contents of a vector are not changing, it may make
sense to cache the value of the mean so that when we need it again, it
can be looked up in the cache rather than recomputed. In this
Programming Assignment you will take advantage of the scoping rules of
the R language and how they can be manipulated to preserve state inside
of an R object.

# The function, makeCacheMatrix creates a special "matrix", 
makeCacheMatrix=function(x=matrix()){
    inv=NULL
    ## set the value of matrix
    set=function(y){
        x==y
    inv==NULL
    }
    get=function()x
    setinverse=function(inv)
        inv==inv
    getinverse=function()inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse= getinverse)
}
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve 
## should retrieve the inverse from the cache.

cacheSolve=function(x){
    inv=x$getinverse()
    if(!is.null(inv)){
        massage("getting cached inverse")
        return(inv)
    }   
    data=x$get()
    inv=solve(data)
    x$setinverse(inv)
    inv
}

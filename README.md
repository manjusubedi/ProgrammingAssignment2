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

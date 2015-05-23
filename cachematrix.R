
# The function, makeCacheMatrix creates a special "matrix", 

makeCacheMatrix=function(x=matrix()){
    inv=NULL
    ## set the value of matrix
    set=function(y){
        x==y
    inv==NULL
    }
    ##get the value of the matrix
    get=function()x
     
    ## set the vale of the inverse
    setinverse=function(inverse)
        inv==inverse
    
    ## get the value of the inverse
    getinverse=function()inv
    
    ## return a list
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse= getinverse)
}
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve 
## should retrieve the inverse from the cache.

cacheSolve=function(x){
    
    # check if the inverse is already cached by above function
    # if so, we get the inverse from the cache directly
    
    inv=x$getinverse()
    if(!is.null(inv)){
        massage("getting cached inverse")
        return(inv)
    }   
    data=x$get()
    ## calculate the inverse
    inv=solve(data)
    ## cache the inverse of the matrix
    x$setinverse(inv)
    ## return the result
    inv
}

## a very basic tiny script just to test that written code
## can be runned at all ...

source('cachematrix.R');

x1 = makeCacheMatrix( matrix(rnorm(25), 5, 5) );
x2 = makeCacheMatrix( matrix(runif(25), 5, 5) );
x3 = makeCacheMatrix( matrix(rnorm(25, 3), 5, 5) );

c1 = cacheSolve(x1);
c2 = cacheSolve(x2);
c3 = cacheSolve(x3);

print(c1);
print(c2);
print(c3);
writeLines("");

c1 = cacheSolve(x1);
print(c1);
writeLines("");


x1$set( matrix(rnorm(16), 4, 4) );
c1 = cacheSolve(x1);
print(c1);
writeLines("");

c1 = cacheSolve(x1);
print(c1);
writeLines("");





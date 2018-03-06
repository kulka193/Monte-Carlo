# Monte-Carlo
This code repository does a simple demonstration of how Monte Carlo works by using a linear model. Let us consider the linear model of the form:
![first equation](http://latex.codecogs.com/gif.latex?y_%7Bi%7D%3D%5Calpha_%7Bi%7D&plus;%5Cbeta*%5Cunderline%7Bx%7D&plus;%5Cepsilon_%7Bi%7D)
where x is a collection of random samples drawn from gaussian distribution. ![](http://latex.codecogs.com/gif.latex?%5Cepsilon) is the noise is the gaussian noise in the system. Here we are trying to estimate the parameter ![](http://latex.codecogs.com/gif.latex?%5Cbeta) from the given linear equation. Now, we find use least squares to come up with the closed form solution of the given linear model. So, we get: 

![](http://latex.codecogs.com/gif.latex?%5Chat%7BE%7D%3D%28x%5E%7BT%7Dx%29%5E%7B-1%7Dx%5E%7BT%7Dy) . So this gives us the Estimate that has the dimensions (nxn) where n is the numebr of observation columns of x. So we extract th eparameters by: 
![](http://latex.codecogs.com/gif.latex?%5Cbegin%7Bbmatrix%7D%20%5Chat%7B%5Cbeta%7D%5C%5C%20%5Chat%7B%5Calpha%7D%20%5Cend%7Bbmatrix%7D%20%3Ddiag%28%5Chat%7BE%7D%29). We repeat this for large number of trails, say T. So, the mean of the population of estimates of all experiments is given by:
![](http://latex.codecogs.com/gif.latex?E%5B%5Chat%7B%5Cbeta%7D%5D%3D%5Cfrac%7B%5Chat%7B%5Cbeta_%7B1%7D%7D&plus;%5Chat%7B%5Cbeta_%7B2%7D%7D&plus;....&plus;%5Chat%7B%5Cbeta_%7BT%7D%7D%7D%7BT%7D)

So, as the number of trials increases, the mean of the sampling distribution of the parameter will gradually equal to the parameter itself(unbiased estimate) i.e., ![](http://latex.codecogs.com/gif.latex?E%5B%5Chat%7B%5Cbeta%7D%5D%3D%5Cbeta). The below images show the convergence of the parameter to the actual value and the histogram of the parameter ![](http://latex.codecogs.com/gif.latex?%5Chat%7B%5Cbeta%7D) that shows how eventually the sampling distribution will converge to Gaussian.

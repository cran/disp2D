\name{disp2D-package}
\alias{disp2D-package}
\alias{disp2D}
\docType{package}
\title{ Hausdorff and Simplex Dispersion orderings }
\description{
  Given a 2D point set, different three point sets are selected.
  The Hausdorff distances between the convex hulls are calculated
  exactly.
}
\details{
\tabular{ll}{
Package: \tab disp2D\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-05-24\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
}
\author{
  Guillermo Ayala <Guillermo.Ayala@uv.es>
  Maintainer: Guillermo Ayala
}
\references{
  Ayala G. and Lopez M. The simplex dispersion ordering and its
  application to the evaluation of human corneal endothelia. Journal of
  Multivariate Analysis, 100:1447-1464, 2009.
  
  G. Ayala, M.C. Lopez-Diaz, M. Lopez-Diaz, and
  L. Martinez-Costa. Studying hypertension in ocular fundus images
  using Hausdorff dispersion ordering.
  Mathematical Medicine and Biology: A journal of the IMA, 2011.
  
  Miguel Lopez-Diaz. An indexed multivariate dispersion ordering based
  on the Hausdorff distance. Journal of Multivariate Analysis,
  97(7):1623 - 1637, 2006.
  
  G. Ayala, M.C. Lopez-Diaz, M. Lopez-Diaz and
  L. Martinez-Costa.  Methods and algorithms to test the simplex
  and Hausdorff dispersion orders with a simulation study and an
  Ophthalmological application. Technical Report. 2012
}
\keyword{ package }
\examples{
library(disp2D)
library(geometry)
library(mvtnorm)
sigma1 = matrix(c(0.912897,1.092679,1.092679,1.336440),byrow=TRUE,ncol=2)
sigma2 = sigma1 + diag(1,ncol=2,nrow=2)
A = rmvnorm(200,mean=rep(0,2),sigma=sigma1)
B = rmvnorm(200,mean=rep(0,2),sigma=sigma2)
r=.1
prob = probA = probB =  rep(1/200,200)
HA = exactHausdorff(A,probA,r)
HB = exactHausdorff(B,probB,r)
plot(HA$distance, cumsum(HA$probability), type = "l", xlab = "",
     ylab = "DF", xlim = range(c(HA,HB)))
 lines(HB$distance, cumsum(HB$probability), lty = 2)
d1 = simplex(A,bootstrap=TRUE,nresamples=100)
}

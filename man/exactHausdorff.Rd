\name{exactHausdorff}
\alias{exactHausdorff}
\title{
  The Hausdorff distances between the convex hulls of unions of points
  and disc centered at the mean.
}
\description{
  Given a sample x1,...,x_n, it is evaluated the distribution of the
  Hausdorff distances between xi + B(m,r) and xj + B(m,r) where: xi
  and xj are two different points from the sample; m is the sample
  mean of the xi's; r is a positive value and B(m,r) is the disc
  centered at m with radius r. The i-th point xi has probability prob[i].
}
\usage{
exactHausdorff(A, prob, r)
}
\arguments{
  \item{A}{
 A matrix where each row corresponds with a different point.
}
  \item{prob}{
 The probabilities of each row of A. If we are dealing with the
 empirical distribution then all points are equiprobable and
 prob = rep(1/nrow(A),nrow(A)
}
  \item{r}{
 A positive number.
}
}
\value{
  \item{distance}{The observed distances between xi + B(m,r) and
    xj + B(m,r) where: xi and xj are two different points from the
    sample.
  }
  \item{probability}{Probabilities of each distance.
  }
  \item{alldistances}{The whole set of distances with repetitions.
  }
}
\references{
  Miguel Lopez-Diaz. An indexed multivariate dispersion ordering based
  on the Hausdorff distance. Journal of Multivariate Analysis,
  97(7):1623 - 1637, 2006.
  
  G. Ayala, M.C. Lopez-Diaz, M. Lopez-Diaz and
  L. Martinez-Costa.  Methods and algorithms to test the simplex
  and Hausdorff dispersion orders with a simulation study and an
  ophthalmological application. Technical Report. 2012
}
\author{
Guillermo Ayala <Guillermo.Ayala@uv.es>
}

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
}

\keyword{ Hausdorff stochastic ordering }

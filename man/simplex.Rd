\name{simplex}
\alias{simplex}
\title{
  Hausdorff distances between the convex hulls of two point sets
  with three elements.
}
\description{
  From an original 2D point set, different two bootstrap samples
  are obtained and the Hausdorff distances between them evaluated.
}
\usage{
simplex(x, bootstrap = TRUE, nresamples = 10)
}
\arguments{
  \item{x}{
 A matrix. 
}
  \item{bootstrap}{
    bootstrap = TRUE then we take two bootstrap samples.
}
  \item{nresamples}{
    A positive integer indicating the number of two bootstrap samples.
}
}
\value{
  Hausdorff distances between the convex hulls. 
}
\references{
  Ayala G. and Lopez M. The simplex dispersion ordering and its
  application to the evaluation of human corneal endothelia. Journal of
  Multivariate Analysis, 100:1447-1464, 2009.
  
  G. Ayala, M.C. Lopez-Diaz, M. Lopez-Diaz and
  L. Martinez-Costa.  Methods and algorithms to test the simplex
  and Hausdorff dispersion orders with a simulation study and an
  Ophthalmological application. Technical Report. 2012

}
\author{
  Guillermo Ayala <Guillermo.Ayala@uv.es>
}
\examples{
A = matrix(runif(200),ncol=2,nrow=100)
d1 = simplex(A,bootstrap=TRUE,nresamples=100)

}
\keyword{ Simplex dispersion ordering }

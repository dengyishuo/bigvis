\name{mt}
\alias{inv_mt}
\alias{mt}
\alias{mt_trans}
\title{Modulus transformation (and its inverse).}
\usage{
  mt(x, lambda)

  inv_mt(x, lambda)

  mt_trans(lambda)
}
\arguments{
  \item{x}{values to transform}

  \item{lambda}{degree of transformation}
}
\description{
  A generalisation of the box-cox transformation that works
  for values with both positive and negative values.
}
\details{
  This is useful for compressing the tails of long-tailed
  distributions, often encountered with very large
  datasets.
}
\examples{
x <- seq(-10, 10, length = 100)
plot(x, mt(x, 0), type = "l")
plot(x, mt(x, 0.25), type = "l")
plot(x, mt(x, 0.5), type = "l")
plot(x, mt(x, 1), type = "l")
plot(x, mt(x, 2), type = "l")
plot(x, mt(x, -1), type = "l")
plot(x, mt(x, -2), type = "l")
}
\references{
  J. John and N. Draper. "An alternative family of
  transformations." Applied Statistics, pages 190-197,
  1980.  \url{http://www.jstor.org/stable/2986305}
}


\name{WlsInit}
\alias{WlsInit}

\title{Computation of Starting Values based on Weighted Least Squares}
\description{
  Subroutine called by FitComposite.
  The function returns opportune starting values for the
  composite-likelihood fitting procedure based on weigthed least squares.
}
\usage{
WlsInit(coordx, coordy, corrmodel, data, fixed, grid,
        likelihood, lonlat, model, parscale, paramrange,
        start, time, type)
} 
\arguments{
 \item{coordx}{A numeric (\eqn{d \times 2}{d x 2})-matrix (where
    \code{d} is the number of points) assigning 2-dimensions of coordinates or a numeric vector assigning
    1-dimension of coordinates.}
  \item{coordy}{A numeric vector assigning 1-dimension of
    coordinates; \code{coordy} is interpreted only if \code{coordx} is a numeric
    vector otherwise it will be ignored.}
  \item{corrmodel}{String; the name of a correlation model, for the
    description.}
  \item{data}{A numeric vector or a (\eqn{n \times d}{n x d})-matrix or (\eqn{d \times d
      \times n}{d x d x n})-matrix of observations.}
  \item{fixed}{A named list giving the values of the parameters that
    will be considered as known values.}
  \item{grid}{Logical; if \code{FALSE} (the default) the data
    are interpreted as a vector or a (\eqn{n \times d}{n x d})-matrix,
    instead if \code{TRUE} then (\eqn{d \times d
      \times n}{d x d x n})-matrix is considered.}
  \item{likelihood}{String; the configuration of the composite
    likelihood.}
  \item{lonlat}{Logical; if \code{FALSE} (the default), \code{coordx}
    and \code{coordy} are interpreted as Cartesian coordinates
    otherwise they are considered as longitude and latitude.}
  \item{model}{String; the name of the model. Here the default is \code{NULL}.}
  \item{parscale}{A numeric vector with scaling values for improving the
    maximisation routine.}
  \item{paramrange}{A numeric vector with the range of the parameter
    space.}
  \item{start}{A numeric vector with starting values.}
  \item{time}{Logical; if \code{FALSE} (the default) a spatial random field is
    considered (one temporal realisation), if \code{TRUE} a
    spatial-temporal random field is considered.}
  \item{type}{String; the type of estimation method.}
}

\seealso{\code{\link{FitComposite}}, \code{\link{WLeastSquare}}.}

\author{Simone Padoan, \email{simone.padoan@epfl.ch},
  \url{http://eflum.epfl.ch/people/padoan.en.php}.}

\keyword{LeastSquare}
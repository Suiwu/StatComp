% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shape.R
\name{FREShape}
\alias{FREShape}
\title{Frechet regression}
\usage{
FREShape(Y, X, x0)
}
\arguments{
\item{Y}{A shapes data (landmark\*dim \*num)}

\item{X}{variables in euclidean space}

\item{x0}{location of estimation}
}
\value{
A value in shapes space.
}
\description{
Regression for shapes data through frechet mean
}
\examples{
\dontrun{
# estimation
data("brains")
Y=brains$x[,,1:10]
X=cbind(brains$age,brains$grp)[1:10,]
em=FREShape(Y,X,X[1,])
em
}
}

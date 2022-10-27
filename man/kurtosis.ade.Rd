\name{kurtosis.ade}
\alias{kurtosis.ade}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simple function to calculate kurtosis
}
\description{
calculate kurtosis
}
\usage{
kurtosis.ade(x, na.rm=FALSE)
}
\arguments{
\item{x}{
a numeric vector
}
  \item{na.rm}{
a logical value indicating whether NA values should be stripped
before the computation proceeds.
}
}
\value{
a single number of kurtosis from x
}
\seealso{
\code{\link{skewness.ade}}
}
\examples{
x<-rnorm(1000)
kurtosis.ade(x)
}
\keyword{ kurtosis }

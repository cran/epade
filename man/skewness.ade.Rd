\name{skewness.ade}
\alias{skewness.ade}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simple function to calculate skewness
}
\description{
calculate skewness
}
\usage{
skewness.ade(x, na.rm=FALSE, w=NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a numeric vector
}
  \item{na.rm}{
a logical value indicating whether NA values should be stripped
before the computation proceeds.
}
  \item{w}{
weights
}
}
\value{
a single number of skewness from x
}
\seealso{
\code{\link{kurtosis.ade}}
}
\examples{
x<-rnorm(1000)
skewness.ade(x)
}
\keyword{ skewness }

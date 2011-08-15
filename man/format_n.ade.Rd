\name{format_n.ade}
\alias{format_n.ade}
\title{
Format a number
}
\description{
Format an R object for pretty printing.
}
\usage{
format_n.ade(x, digits=2, scientific=FALSE)
}
\arguments{
  \item{x}{
\itemize{
\item{ a numeric value }
\item{ a vector of numeric values  }
\item{ a matrix of numeric values }
}
}
\item{digits}{
how many significant digits are to be shown
}
\item{scientific}{
a logical specifying whether the number should be encoded in scientific format
}
}
\value{
An object of similar structure to x containing character representations of the elements of x in a common format
}
\seealso{
\code{\link{format_p.ade}}
}
\examples{
format_n.ade((1:10)/100)
}
\keyword{ format }
\keyword{ round }

\name{format_p.ade}
\alias{format_p.ade}
\title{
Formating  p-values
}
\description{
Format a p-value for pretty printing.
}
\usage{
format_p.ade(x, pgits=4, digits=2)
}
\arguments{
  \item{x}{
\itemize{
\item{ a numeric p-value }
\item{ a vector of numeric p-values  }
\item{ a matrix of numeric p-values }
}
}
  \item{pgits}{
Number of digits after decimal for cutoff of the p-value, 4 means, all under 0.0001 will be shown like <0.0001
}
\item{digits}{
how many significant digits are to be used. (bevore the cut with pgits)
}
}
\details{
if used a half-integer for pgits, like 3.5 the p-value will be shown like <0.0005
}
\value{
An object of similar structure to x containing character representations of the elements of x in a common format
}
\seealso{
\code{\link{format_n.ade}}
}
\examples{
format_p.ade(0.045825, 4, 3)
format_p.ade(0.000025, 4)
format_p.ade(0.000025, 3.5)
}
\keyword{ format }
\keyword{ round }

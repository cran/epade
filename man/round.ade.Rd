\name{round_n.ade}
\alias{round_n.ade}
\title{
A round function
}
\description{
round a numeric value for pretty printing.
}
\usage{
round_n.ade(x, digits = 0)
}
\arguments{
  \item{x}{
a numeric R object
}
  \item{digits}{
how many digits are to be shown after decimal?
}
}
\details{
the function print zeros at the end of a number, to show the precision of rounding
}
\value{
An object of similar structure to x containing character representations of the
elements of x in a rounded format
}
\seealso{
\code{\link{format_p.ade}}
}
\examples{
round_n.ade(13.1415, 2)
round_n.ade(3, 3)
}
\keyword{ round }

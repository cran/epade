\name{round.ade}
\alias{round.ade}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A round function
}
\description{
round a numeric value for pretty printing.
}
\usage{
round.ade(x, digits = 0)
}
%- maybe also 'usage' for other objects documented here.
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
round.ade(13.1415, 2)
round.ade(3, 3)
}
\keyword{ round }

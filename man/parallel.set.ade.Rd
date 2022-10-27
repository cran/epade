\name{parallel.set.ade}
\alias{parallel.set.ade}
\title{
Parallel set plot
}
\description{
Plot proportions of categorical data in parallel manner
}
\usage{
parallel.set.ade(vars, vnames=NULL, data=NULL,
                 xlab="Factors", ylab="Proportion", main=NULL,
                 col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL, alpha=NULL,
                 cex=NULL, wall=0, horizontal=FALSE)
}
\arguments{
  \item{vars}{
\itemize{
\item{ a list of factors }
\item{ a vector of character strings with the names of factors in data.frame }
}
}
  \item{vnames}{
a vector of character strings with the names of factors
}
  \item{data}{
data.frame if used character string for vars
}
  \item{xlab}{
a title for the x axis
}
  \item{ylab}{
a title for the y axis
}
  \item{main}{
an overall title for the plot
}
  \item{col}{
a vector of colors for each levels of first factor
}
  \item{tcol}{
color of the text in whole plot
}
  \item{bgcol}{
the background color for plot dekoration
}
  \item{lcol}{
a vector of colors or single color for areas where all levels are drawn
}
  \item{alpha}{
a parameter in [0, 1] for semi-transparency of polygons
}
  \item{cex}{
character expansion factor for levels printing
}
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
  \item{horizontal}{
logical asking whether to draw the plot horizontally
}
}
\seealso{
\code{\link{parallel.ade}}
}
\examples{
x<-rbinom(1000, 1, 0.25)
y<-rbinom(1000, 1, 0.5)
z<-rbinom(1000, 1, 0.75)
parallel.set.ade(list(x,y,z), wall=2)
}
\keyword{ parallel }

\name{parallel.ade}
\alias{parallel.ade}
\title{
Parallel coordinate plot
}
\description{
Draw a parallel coordinate plot
}
\usage{
parallel.ade(vars, vnames=NULL, data=NULL, group=NULL, ylim=NULL,
             xlab=NULL, ylab=NULL, main=NULL,
             alpha=NULL, col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL,
             scale=FALSE, desc=FALSE, means=TRUE,
             legendon="top", wall=0)
}
\arguments{
  \item{vars}{
\itemize{
\item{ a list of numeric variables }
\item{ a vector of character strings with the names of variables in data.frame }
}
}
  \item{vnames}{
a vector of character strings with the names of variables
}
  \item{data}{
data.frame if used character string for vars
}
  \item{group}{
\itemize{
\item{ a factor to group the lines }
\item{ a character string with the name of the group variable in the data.frame }
}
}
  \item{ylim}{
the y limits (y1, y2) of the plot
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
  \item{alpha}{
a parameter in [0, 1] for semi-transparency of points
}
  \item{col}{
a vector of colors for the lines for each group or each line if not using groups
}
  \item{tcol}{
color of the text in whole plot
}
  \item{bgcol}{
the background color for plot dekoration
}
  \item{lcol}{
color for the mean lines
}
  \item{scale}{
a logical specifying whether the variables will be scaled to the range of [0,1]
}
  \item{desc}{
a logical specifying whether the colors will be sorted decreasingly
}
  \item{means}{
logical asking whether to draw means
}
  \item{legendon}{
a single keyword from:
 \itemize{
 \item{"bottomright"}
 \item{"bottom"}
 \item{"bottomleft"}
 \item{"left"}
 \item{"topleft"}
 \item{"top"}
 \item{"topright"}
 \item{"right"}
 \item{"center"}
}
 This places the legend on the inside of the plot frame at the given location.
}
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
}
\seealso{
\code{\link{parallel.set.ade}}
}
\examples{
x1<-rnorm(1000, 0, 5)
x2<-rnorm(1000, 0, 4)
x3<-rnorm(1000, 0, 3)
x4<-rnorm(1000, 0, 2)
parallel.ade(vars=list(x1, x2, x3, x4))
g<-rbinom(1000, 1, 0.5)
x1[g==1]<- x1[g==1]+8
x2[g==1]<- x2[g==1]-8
x3[g==1]<- x3[g==1]+6
x4[g==1]<- x4[g==1]-6
parallel.ade(vars=list(x1, x2, x3, x4), group=g,wall=3)
}
\keyword{ parallel }

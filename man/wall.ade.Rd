\name{wall.ade}
\alias{wall.ade}
\title{
Plot templates (wall)
}
\description{
A function to make look a like templates of plots for different wall parameters.
}
\usage{
wall.ade(vnames=NULL, main=NULL, xlab=NULL, ylab=NULL, glab=NULL,
         legendon="topright", xlim=NULL, ylim=NULL, lwd=1, pch=16, lty=1,
         xticks=NULL, yticks=NULL, col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL,
         wall=0, v=NULL, h=NULL)
}
\arguments{
  \item{vnames}{
a vector of character strings with labels in the legend
}
  \item{main}{
an overall title for the plot
}
  \item{xlab}{
a title for the x axis
}
  \item{ylab}{
a title for the y axis
}
  \item{glab}{
a title of the legend
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
 To locate 2 legends you can give a vector of 2 keywords.
}
  \item{xlim}{
the x limits (x1, x2) of the plot
}
  \item{ylim}{
the y limits (y1, y2) of the plot
}
  \item{lwd}{
the line width
}
  \item{pch}{
character or symbol in the legend
}
  \item{lty}{
the line type
}
  \item{xticks}{
the number of ticks on the x axis or a vector of exact ticks
}
  \item{yticks}{
the number of ticks on the y axis or a vector of exact ticks
}
  \item{col}{
a vector of colors for the points in the legend
}
  \item{tcol}{
color of the text in whole plot
}
  \item{bgcol}{
the background color for plot dekoration
}
  \item{lcol}{
color for the lines in plot, a vector of colors is possible
}
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
  \item{v}{
the x-value(s) for vertical line(s).
}
  \item{h}{
the y-value(s) for horizontal line(s).
}
}
\seealso{
\code{\link{scatter.ade}}
}
\examples{
par(ask=TRUE)
wall.ade(vnames=c('blue', 'red'), wall=0, main='Template of wall 0', xlab='x', ylab='y')
wall.ade(vnames=c('blue', 'red'), wall=1, main='Template of wall 1', xlab='x', ylab='y')
wall.ade(vnames=c('blue', 'red'), wall=2, main='Template of wall 2', xlab='x', ylab='y')
wall.ade(vnames=c('blue', 'red'), wall=3, main='Template of wall 3', xlab='x', ylab='y')
wall.ade(vnames=c('blue', 'red'), wall=4, main='Template of wall 4', xlab='x', ylab='y')
wall.ade(vnames=c('blue', 'red'), wall=5, main='Template of wall 5', xlab='x', ylab='y')
wall.ade(vnames=c('blue', 'red'), wall=6, main='Template of wall 6', xlab='x', ylab='y')
}
\keyword{ plot }
\keyword{ wall }

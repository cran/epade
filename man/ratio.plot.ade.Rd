\name{ratio.plot.ade}
\alias{ratio.plot.ade}
\title{
Ratio plot
}
\description{
A Plot for varying kinds of estimators with intervals
}
\usage{
ratio.plot.ade(M, vnames, sectext=NULL,
               main=NULL, xlab=NULL, ylab=NULL, legenlab=NULL, rlab=NULL,
               col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL,
               r=NULL, v=c(0,1), lty=c(1,2), xticks=18,
               hlines=TRUE, legends=TRUE, logaxe=FALSE, wall=0)
               
}
\arguments{
  \item{M}{
A matrix or a list of matrices where first column is the estimated value, second and third are lower and upper interval limits
, rows are different values for comparison.
}
  \item{vnames}{
a vector of character strings with the names for different values (rows)
}
  \item{sectext}{
a secont text to be placed under the vnames, can be p-values for example
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
  \item{legenlab}{
a vector of character strings with the names for groups in the legend
}
  \item{rlab}{
a title over the vnames
}
  \item{col}{
a vector of colors for the intervals in each group
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
  \item{r}{
a value in (0,1), define the right space for labels.
}
  \item{v}{
the x-value(s) for vertical line(s).
}
  \item{lty}{
the line type
}
  \item{xticks}{
the number of ticks on the x axis or a vector of exact ticks
}
  \item{hlines}{
logical asking whether to draw horizontal grid lines
}
  \item{legends}{
logical asking whether to draw the legend
}
  \item{logaxe}{
logical asking whether to use a logarithmic scale on x axis
}
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
}
\examples{
vnames<-c('Value 1', 'Value 2', 'Value 3', 'Value 4')
x<-abs(rnorm(4))
M1<-cbind(x, x-(x/2), x+(x/2))
x<-abs(rnorm(4))
M2<-cbind(x, x-(x/2), x+(x/2))
x<-abs(rnorm(4))
M3<-cbind(x, x-(x/2), x+(x/2))
ratio.plot.ade(list(M1, M2, M3), vnames=vnames, wall=3,
legenlab=c('group 1', 'group 2', 'group 3'))
}
\keyword{ CI }

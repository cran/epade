\name{box.plot.wtd}
\alias{box.plot.wtd}
\title{
weighted Boxplot
}
\description{
Draw a weighted Boxplot. (Beta Version)
}
\usage{
box.plot.wtd(x, group=NULL, group2=NULL, w=NULL, data=NULL, vnames=NULL,
             main=NULL, xlab=NULL, ylab=NULL, ylim=NULL, yticks=NULL,
             col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL, pdigs=4, alpha=NULL,
             cex=1, cex.axis=1, lwd=2, h=NULL, lty=2,
             varwidth=TRUE, means=FALSE, count=TRUE, zylinder=FALSE,
             outlier=TRUE, wall=0, type='box')
}
\arguments{
  \item{x}{
  \itemize{
      \item{ a numeric vector of values                                }
      \item{ a character string with the name of the variable in the data.frame }
      \item{ a formula x~group or x~group+group2                       }
}
}
  \item{group}{
\itemize{
\item{ a factor to group the plots }
\item{ a character string with the name of the group variable in the data.frame }
}
}
  \item{group2}{
\itemize{
\item{ a second factor to group the plots }
\item{ a character string with the name of the group2 variable in the data.frame }
}
}
\item{w}{
weights
}
\item{data}{
a data.frame
}
  \item{vnames}{
a vector of character strings with the names of groups in the legend,  it can be a list of two vectors if group2 is given
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
  \item{ylim}{
the y limits (y1, y2) of the plot
}
  \item{yticks}{
the number of ticks on the y axis or a vector of exact ticks
}
  \item{col}{
color of objects (Boxes)
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
  \item{pdigs}{
a number indicate how to round p-values.: see ?format.pval.ade
}
  \item{alpha}{
a parameter in [0, 1] for semi-transparency of objects (Boxes)
}
  \item{cex}{
a numeric character expansion factor for the points
}
  \item{cex.axis}{
a numeric character expansion factor for axis
}
  \item{lwd}{
the line width
}
  \item{h}{
the y-value(s) for horizontal line(s).
}
  \item{lty}{
the line type
}
  \item{varwidth}{
logical asking whether the boxwidth indicate the N
}
  \item{means}{
logical asking whether to draw points for the means
}
  \item{count}{
\itemize{
\item{ logical asking whether to shown N }
\item{ a string to replace N with it, if you use "?" in you string in will be replaced with N.}
\item{ a vector of strings to replace N with it, if you use "?" in you strings in will be replaced with N.}
}
}
  \item{zylinder}{
logical asking whether to draw boxes in a zylinder style
}
  \item{outlier}{
logical asking whether to draw points for outlier
}
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
  \item{type}{
one of following:
\itemize{
\item{"boxplot" for a normal boxplot             }
\item{"sd"  for mean and one sd interval         }
\item{"2sd" for mean and one, two sd intervals   }
\item{"iqr" for a IQR plot     }
}
}
}
\examples{
x<-rnorm(1000)
g<-round(runif(1000))
w<-abs(rnorm(1000))
d<- data.frame(x, g, w)
box.plot.wtd('x', 'g', w='w', data=d)
}
\keyword{ boxplot }

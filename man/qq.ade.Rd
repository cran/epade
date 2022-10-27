\name{qq.ade}
\alias{qq.ade}
\title{
Q-Q Plot
}
\description{
Draw a simple Q-Q Plot
}
\usage{
qq.ade(x, data=NULL, main="Q-Q Plot",
       xlab="Theoretical Quantiles", ylab="Sample Quantiles",
       xlim=NULL, ylim=NULL, lwd=1, cex=1, pch=16, lty=1,
       xticks=NULL, yticks=NULL,
       col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL, alpha=NULL, fitline=0,
       qline=TRUE, wall=0, v=NULL, h=NULL, diag=FALSE, band=FALSE, span=0.75)
}
\arguments{
  \item{x}{
\itemize{
\item{ a numeric vector }
\item{ a character string with the name of the variable in the data.frame }
}
}
  \item{data}{
data.frame if used character string for x
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
  \item{xlim}{
the x limits (x1, x2) of the plot
}
  \item{ylim}{
the y limits (y1, y2) of the plot
}
  \item{lwd}{
the line width
}
  \item{cex}{
character (or symbol) expansion: a numerical value
}
  \item{pch}{
plotting "character", i.e., symbol to use. This can either be a single character
or an integer code for one of a set of graphics symbols.
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
a color for the points
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
  \item{alpha}{
a parameter in [0, 1] for semi-transparency of points
}
  \item{fitline}{
a number between 0 and 3 to fit:
\itemize{
\item{0. not fit    }
\item{1. a lm regression line  }
\item{2. a loess local regression line  }
\item{3. a pylinomial regression line  }
}
}
  \item{qline}{
logical asking whether to draw a median line fitted from data between 25th and 75th percentiles only.
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
  \item{diag}{
logical asking whether to plot a diagonal line
}
  \item{band}{
logical asking whether to plot a simulated normal band or N of iteration for band estimation
}
  \item{span}{
the span parameter for lowess curve fit (only if fitline=2)
}
}
\details{
It is only a wrapper function for scatter.ade.
}
\seealso{
\code{\link{scatter.ade}}
}
\examples{
qq.ade(rnorm(1000))
qq.ade(rchisq(1000, 2), fitline=2, wall=3, col=2)
}
\keyword{ Q-Q Plot }

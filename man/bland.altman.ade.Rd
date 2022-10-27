\name{bland.altman.ade}
\alias{bland.altman.ade}
\title{
Bland-Altman plot
}
\description{
Plot for assessing agreement between two methods of clinical measurement
}
\usage{
bland.altman.ade(x, y, data=NULL, ltext=TRUE, main="Bland-Altman Plot",
                 xlab=NULL, ylab=NULL, xlim=NULL, ylim=NULL,
                 lwd=2, cex=1, pch=16, lty=c(1,2,2), xticks=NULL, yticks=NULL,
                 col=NULL, tcol=NULL, bgcol=NULL, lcol=c(4,2,2), alpha=NULL,
                 fitline=1, wall=0, v=NULL, h=NULL, span=0.75)
}
\arguments{
  \item{x}{
\itemize{
\item{ a numeric vector of first mesurement }
\item{ a string with the name of first mesurement in the data.frame }
}
}
  \item{y}{
\itemize{
\item{ a numeric vector of second mesurement }
\item{ a string with the name of second mesurement in the data.frame }
}
}
  \item{data}{
data.frame if used strings for (x,y)
}
  \item{ltext}{
    \itemize{
\item{ logical asking whether to draw labels for the lines }
\item{ a string vector with the labels for the lines }
}
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
the line type, a vector is possible
}
  \item{xticks}{
the number of ticks on the x axis or a vector of exact ticks
}
  \item{yticks}{
the number of ticks on the y axis or a vector of exact ticks
}
  \item{col}{
color of the points
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
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
  \item{v}{
the x-value(s) for vertical line(s).
}
  \item{h}{
the y-value(s) for horizontal line(s).
}
  \item{span}{
the span parameter for lowess curve fit (only if fitline=2)
}
}
\details{
It is only a Wrapper function for scatter.ade.
Ploting the Difference against the mean for both variables.
}
\seealso{
\code{\link{scatter.ade}}
}
\examples{
x<-rnorm(1000, 0, 3)
y<-x+rnorm(1000, 1, 0.5)
bland.altman.ade(x, y, wall=2)
}
\keyword{ scatter }

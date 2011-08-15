\name{curves.ade}
\alias{curves.ade}
\title{
Curves
}
\description{
Draw points and a line between the points
}
\usage{
curves.ade(x, y=NULL, group=NULL, data=NULL, vnames=NULL,
          main=NULL, xlab=NULL, ylab=NULL, legendon="topright",
          xlim=NULL, ylim=NULL, lwd=1, lwd2=1, cex=1, pch=16,
          lty=1, lty2=2, col=NULL, xticks=NULL, yticks=NULL,
          tcol=NULL, bgcol=NULL, alpha=NULL, fitline=0,
          wall=0, v=NULL, h=NULL, diag=F, points=T)
}
\arguments{
  \item{x}{
    \itemize{
     \item{ a numeric vector of x coordinates for the points              }
     \item{ a string with the name of the variable in the data.frame  }
     \item{ a formula y~x or y~x+group                                }
 }
}
  \item{y}{
    \itemize{
     \item{ a numeric vector of y coordinates for the points              }
     \item{ a string with the name of the variable in the data.frame  }
     \item{ a formula y~x or y~x+group                                }
 }
}
  \item{group}{
\itemize{
\item{ a factor to group the points }
\item{ a character string with the name of the group variable in the data.frame }
}
}
  \item{data}{
data.frame if used strings for (x,y,group)
}
  \item{vnames}{
a vector of character strings with the names of groups in the legend
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
  \item{xlim}{
the x limits (x1, x2) of the plot
}
  \item{ylim}{
the y limits (y1, y2) of the plot
}
  \item{lwd}{
line width for the lines
}
  \item{lwd2}{
line width for the fited lines
}
  \item{cex}{
character (or symbol) expansion: a numerical value
}
  \item{pch}{
plotting "character", i.e., symbol to use. This can either be a single character
or an integer code for one of a set of graphics symbols.
}
  \item{lty}{
the line types
}
  \item{lty2}{
the line type for fited lines
}
  \item{col}{
a vector of colors for the lines of each group
}
  \item{xticks}{
the number of ticks on the x axis or a vector of exact ticks
}
  \item{yticks}{
the number of ticks on the y axis or a vector of exact ticks
}
  \item{tcol}{
color of the text in whole plot
}
  \item{bgcol}{
the background color for plot dekoration
}
  \item{alpha}{
a parameter in [0, 1] for semi-transparency of lines and points
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
  \item{diag}{
logical asking whether to plot a diagonal line
}
  \item{points}{
logical asking whether to draw points
}
}
\details{
It is only a wrapper function for scatter.ade.
}
\seealso{
\code{\link{scatter.ade}}
}
\examples{
x<-  -100:100
curves.ade(x, x^2, points=FALSE)
}
\keyword{ lines }
\keyword{ curves }

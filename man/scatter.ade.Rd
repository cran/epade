\name{scatter.ade}
\alias{scatter.ade}
\title{
Scatterplot
}
\description{
Draw a scatter or a bubble plot
}
\usage{
scatter.ade(x, y=NULL, group=NULL, z=NULL, data=NULL, vnames=NULL,
            main=NULL, xlab=NULL, ylab=NULL, glab=NULL, zlab=NULL,
            legendon="topright", xlim=NULL, ylim=NULL, zlim=NULL,
            lwd=1, cex=1, pch=16, lty=1,
            xticks=NULL, yticks=NULL, zticks=NULL,
            col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL, alpha=NULL,
            fitline=0, wall=0, v=NULL, h=NULL, diag=FALSE, span=0.75)
}
\arguments{
\item{x}{
\itemize{
\item{ a numeric vector of x coordinates for the points }
\item{ a character string with the name of the x variable in the data.frame }
\item{ a formula y~x, y~x+group or y~x+z+group }
}
}
\item{y}{
\itemize{
\item{ a numeric vector of y coordinates for the points }
\item{ a character string with the name of the y variable in the data.frame }
}
}
\item{group}{
\itemize{
\item{ a factor to group the points }
\item{ a character string with the name of the group variable in the data.frame }
}
}
\item{z}{
\itemize{
\item{ a numeric vector for size of the points  }
\item{ a character string with the name of the size variable in the data.frame }
}
}
\item{data}{
data.frame if used character string for (x,y,g,z) or formula
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
  \item{glab}{
a title of the legend
}
  \item{zlab}{
a title for the z in the second legend
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
 \item{"none"}
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
  \item{zlim}{
the z limits (z1, z2) for the size of points
}
  \item{lwd}{
the line width
}
  \item{cex}{
character (or symbol) expansion: a numerical value, dont work if z is given
}
  \item{pch}{
plotting "character", i.e., symbol to use. This can either be a single character
or an integer code for one of a set of graphics symbols.
15, 16, 17 working well with given z.
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
  \item{zticks}{
the number os Symbols in the z legend or a vector of values for the Symbols
}
  \item{col}{
a vector of colors for the points for each group
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
  \item{diag}{
logical asking whether to plot a diagonal line
}
  \item{span}{
the span parameter for lowess curve fit (only if fitline=2)
}
}
\seealso{
\code{\link{curves.ade}}
}
\examples{
x<-rnorm(1000)
y<-rnorm(1000)
z<-rnorm(1000, 3)
g<-round(runif(1000))
# plot vs ID
scatter.ade(x, vnames=c("blue","red"), alpha=0.25, fitline=2, wall=0, lwd=2, col=4)
# Scatter plot
scatter.ade(x, y*x, g, vnames=c("blue","red"), alpha=0.25, wall=2)
# bubble plot
scatter.ade(x, y, g, z, vnames=c("blue","red"), alpha=0.25, zticks=c(1,2,3,4,5), wall=3)
}
\keyword{ scatterplot }
\keyword{ bubble }

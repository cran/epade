\name{histogram.ade}
\alias{histogram.ade}
\title{
Histogram
}
\description{
plot multiple histograms in one plot
}
\usage{
histogram.ade(x, group=NULL, w=NULL, data=NULL, vnames=NULL, freq=FALSE,
         breaks="Sturges", density=NULL, angle=NULL, xlab=NULL, ylab=NULL,
         main="", xlim=NULL, ylim=NULL, legendon="topright", xticks=NULL,
         col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL, alpha=NULL, lwd=1,
         kern=TRUE, norm=TRUE, bars=TRUE, wall=0, v=NULL, h=NULL, lty=2)
}
\arguments{
  \item{x}{
  \itemize{
\item{ a numeric vector  }
\item{ a string with the name of the variable in the data.frame }
\item{ a formula x~group   }
}
}
  \item{group}{
  \itemize{
\item{ a factor to make separate histogram for each class }
\item{ a string with the name of the group variable in the data.frame }
}
}
  \item{w}{
weights for weighted histograms
}
  \item{data}{
a data.frame
}
  \item{vnames}{
a vector of character strings with the names of groups in the legend
}
  \item{freq}{
logical:  TRUE representation of frequencies or FALSE component density.
}
  \item{breaks}{
a single number giving the number of cells for the histogram
}
  \item{density}{
the density of shading lines, in lines per inch. Set it to NA avoid shading lines with wall=0.
}
  \item{angle}{
the vector of slopes of shading lines, given as an angle in degrees (counter-clockwise).
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
  \item{xlim}{
the x limits (x1, x2) of the plot
}
  \item{ylim}{
the y limits (y1, y2) of the plot
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
  \item{xticks}{
the number of ticks on the x axis or a vector of exact ticks
}
  \item{col}{
colors for each histogram
}
  \item{tcol}{
color of the text in whole plot
}
  \item{bgcol}{
the background color for plot dekoration
}
  \item{lcol}{
color for the lines in plot, a vector of colors is possible, only used if h or v is given
}
  \item{alpha}{
a parameter in [0, 1] for semi-transparency of histogram
}
  \item{lwd}{
the line width
}
  \item{kern}{
logical asking whether to draw lines for kernel density estimation
}
  \item{norm}{
logical asking whether to draw density from normal distribution for comparison
}
  \item{bars}{
logical asking whether to draw bars or only polygones of kernel density estimation
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
  \item{lty}{
the line type, a vector of types is possible
}
}
\examples{
g<-rbinom(1000, 1, 0.5)
x<-rnorm(1000)+g
histogram.ade(x, g, wall=3, breaks=24)
histogram.ade(x, g, wall=2, bars=FALSE)
}
\keyword{ histogram }

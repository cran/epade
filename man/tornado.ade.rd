\name{tornado.ade}
\alias{tornado.ade}
\title{
Tornado or population plot
}
\description{
draw a tornado plot, it could be a population pyramid
}
\usage{
tornado.ade(x, group=NULL, group2=NULL, data=NULL, vnames=NULL, gnames=NULL,
            gnames2=NULL, breaks=6, density=NULL, angle=NULL,
            xlab=NULL, glab=NULL, main='', legendon='topright', xticks=NULL,
            col=NULL, tcol=NULL,  bgcol=NULL, lcol=NULL, alpha=NULL,
            r=0.05, lwd=1, lty=2, wall=0, v=NULL, h=NULL)
}
\arguments{
  \item{x}{
  \itemize{
\item{ a numeric vector  }
\item{ a sigle factor  }
\item{ a string with the name of the variable in the data.frame }
\item{ a formula x~group+group2 }
\item{ a table or matrix }
\item{ a list of tables }
}
}
  \item{group}{
  \itemize{
\item{ a factor to separate the plot in two halves }
\item{ a string with the name of the factor in the data.frame }
\item{ nothing if x is a formula, table or list }
}
}
  \item{group2}{
  \itemize{
\item{ a factor to separate the plot in several groups }
\item{ a string with the name of the factor in the data.frame }
\item{ nothing if x is a formula, table or list }
}
}
  \item{data}{
a data.frame
}
  \item{vnames}{
a vector of character strings with the names of groups in tornado eye
}
  \item{gnames}{
a vector of character strings with the names of both groups
}
  \item{gnames2}{
a vector of character strings with the names of groups in the legend
}
  \item{breaks}{
a single number giving the number of cells to separate x, works only if x is a numeric vector
}
  \item{density}{
the vector of density of shading bars in each group
}
  \item{angle}{
the vector of slopes of shading bars, given as an angle in degrees (counter-clockwise).
}
  \item{xlab}{
a title for the x axis
}
  \item{glab}{
a title for the legend
}
  \item{main}{
an overall title for the plot
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
the number of ticks on the x axis
}
  \item{col}{
colors for each group
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
a parameter in [0, 1] for semi-transparency of bars
}
  \item{r}{
the width of empty edge for the legend if it overlap the bars
}
  \item{lwd}{
the line width
}
  \item{lty}{
the line type, a vector of types is possible
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
\examples{
tab1<-cbind(rpois(20, 20),rpois(20, 20))
tab2<-cbind(rpois(20, 15),rpois(20, 15))
tab3<-cbind(rpois(20, 10),rpois(20, 10))
tornado.ade(list(tab1, tab2, tab3), gnames=c('Men','Women'), xlab='number')
}
\keyword{ tornado }

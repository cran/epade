\name{bar3d.ade}
\alias{bar3d.ade}
\title{
3D Bar-Plot
}
\description{
Draw pseudo 3d Bar-Plot
}
\usage{
bar3d.ade(x, y=NULL, data=NULL, xw=0.5, zw=1,
          main=NULL, xlab=NULL, ylab=NULL, zlab=NULL,
          xticks=NULL, yticks=NULL, zticks=NULL,
          col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL, alpha=NULL,
          axes=TRUE, fgbox=TRUE, bgbox=TRUE, wall=0)
}
\arguments{
  \item{x}{
  \itemize{
\item{ a table or matrix   }
\item{ a numeric vector or factor   }
\item{ a string with the name of the variable in the data.frame  }
\item{ a formula x~y  }
}
}
  \item{y}{
  \itemize{
\item{ a numeric vector or factor }
\item{ a string with the name of the variable in the data.frame }
}
}
  \item{data}{
data.frame if used strings of formul for x and y
}
  \item{xw}{
width of bars in x direction
}
  \item{zw}{
width of bars in z direction
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
  \item{zlab}{
a title for the z axis
}
  \item{xticks}{
a vector of labels for the x axis
}
  \item{yticks}{
the number of ticks on the y axis or a vector of exact ticks
}
  \item{zticks}{
a vector of labels for the z axis
}
\item{col}{
\itemize{
\item{ a color for the bars   }
\item{ a vector of colors   }
\item{ a matrix of colors   }
}
}
  \item{tcol}{
color of the text in whole plot
}
  \item{bgcol}{
the background color for plot dekoration
}
  \item{lcol}{
bar edges color
}
  \item{alpha}{
a parameter in [0, 1] for semi-transparency of bars
}
  \item{axes}{
logical asking whether to plot axis
}
  \item{fgbox}{
logical asking whether to draw 3d box in forderground (dotted part of box)
}
  \item{bgbox}{
logical asking whether to draw 3d box (if FALSE, set fgbox to FALSE too)
}
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
}
\seealso{
\code{\link{bar.plot.ade}}
}
\examples{
bar3d.ade(rpois(200,2), rpois(200,2), wall=3)
x <- seq(-16, 16, length= 48)
y <- x
f <- function(x,y) { r <- sqrt(x^2+y^2); 10 * sin(r)/r }
z <- outer(x, y, f)
z[is.na(z)] <- 1
bar3d.ade(z, wall=2, xw=1, zw=0.2, axes=FALSE, bgbox=FALSE,
xlab='', ylab='', zlab='', alpha=1, col='lavender')
}
\keyword{ barplot }

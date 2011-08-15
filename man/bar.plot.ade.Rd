\name{bar.plot.ade}
\alias{bar.plot.ade}
\title{
Bar plot
}
\description{
A function to draw a barplot
}
\usage{
bar.plot.ade(x, y=NULL, z=NULL, data=NULL,
             vnames.x=NULL, vnames.y=NULL, vnames.z=NULL,
             btext=NULL, b=NULL, b2=0.5, v=NULL, h=NULL, gradient=FALSE,
             xlab="", ylab="", main="", ylim=NULL,
             yticks=NULL, col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL,
             alpha=NULL, beside=TRUE, legendon="topright", wall=0,
             lhoriz=NULL, prozent=FALSE, form="r", border=TRUE, density=NULL,
             angle=NULL, density2=NULL, angle2=NULL, fill=NULL, lwd=1, lty=1,
             blwd=1, blty=1)
}
\arguments{
  \item{x}{
  \itemize{
\item{ a factor   }
\item{ a string with the name of the factor variable in the data.frame }
\item{ a formula x~y or x~y+z       }
\item{ a table   }
}
}
  \item{y}{
\itemize{
\item{ second factor  }
\item{ a string with the name of second factor in the data.frame  }
}
}
  \item{z}{
\itemize{
\item{ third factor     }
\item{ a string with the name of thirds factor in the data.frame   }
}
}
  \item{data}{
a data.frame
}
  \item{vnames.x}{
a vector of character strings with labels for the levels of x
}
  \item{vnames.y}{
a vector of character strings with labels for the levels of y
}
  \item{vnames.z}{
a vector of character strings with labels for the levels of z
}
  \item{btext}{
\itemize{
\item{ logical asking whether to draw p-values from chisq test }
\item{ a vector of character strings with test to draw over the bars}
}
}
  \item{b}{
width of bars in [0, 1]
}
  \item{b2}{
depth of 3d bars in [0, 1]
}
  \item{v}{
the x-value(s) for vertical line(s).
}
  \item{h}{
the y-value(s) for horizontal line(s).
}
  \item{gradient}{
logical asking whether to draw a color gradient
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
  \item{ylim}{
the y limits (y1, y2) of the plot
}
  \item{yticks}{
the number of ticks on the y axis
}
  \item{col}{
color for the bars representing levels of y
}
  \item{tcol}{
color of the text in whole plot
}
  \item{bgcol}{
the background color for plot dekoration
}
  \item{lcol}{
colors for the lines to shading bars, a vector is possible
}
  \item{alpha}{
a parameter in [0, 1] for semi-transparency of bars
}
  \item{beside}{
logical asking whether to draw bars beside or on top
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
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
  \item{lhoriz}{
logical asking whether to draw legend horizontal
}
  \item{prozent}{
logical asking whether to draw percents on bars
}
  \item{form}{
 a single keyword from:
\itemize{
\item{'r': Rects   }
\item{'c', 3D Rects     }
\item{'z': Zylinders (not working well)  }
}
}
  \item{border}{
logical asking whether to draw borders os bars
}
  \item{density}{
first density for shading lines, in lines per inch.
}
  \item{angle}{
first angle (in degrees) for the shading lines.
}
  \item{density2}{
second density for shading lines, in lines per inch.
}
  \item{angle2}{
second  angle (in degrees) for the shading lines.
}
  \item{fill}{
fill color for bars if used density, because the col parameter will be used for color of the shading lines.
}
  \item{lwd}{
width for shading lines
}
  \item{lty}{
linetype for shading lines
}
  \item{blwd}{
width for bar-borders
}
  \item{blty}{
linetype for bar-borders
}
}
\seealso{
\code{\link{bar3d.ade}}
}
\examples{
x<- round(runif(1000, 0.5, 10.5))
bar.plot.ade(x, btext='Uniform distribution', gradient=TRUE)
x<-rbinom(1000, 1, 0.75)
y<-rbinom(1000, 1, 0.30)
z<-rbinom(1000, 1, 0.50)
bar.plot.ade(x,y,z)
bar.plot.ade(x,y,z, wall=4, form='c', main='Bar-Plot')
}
\keyword{ barplot }

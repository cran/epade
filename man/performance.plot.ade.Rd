\name{performance.plot.ade}
\alias{performance.plot.ade}
\title{
Performance Plot
}
\description{
Draw for all posible cutoffs, TP, FP, TN, FN, sensitivity, specificity and more.
}
\usage{
performance.plot.ade(pred, event, data=NULL, vnames=NULL, cutoffs=NULL,
                     cutnames=NULL, main=NULL, xlab="cutoff", ylab="\%",
                     xlim=NULL, xticks=12,
                     col=NULL, tcol=NULL, bgcol=NULL, lcol=NULL, alpha=NULL,
                     nints=100, lty=NULL, lwd=2, stats=c(1, 2),
                     youden=TRUE, wall=0)
}
\arguments{
  \item{pred}{
  \itemize{
\item{ a numeric predictor vector  }
\item{ a string with the name of the variable in the data.frame  }
\item{ a formula yevent~pred    }
}
}
  \item{event}{
    \itemize{
\item{ a numeric event vector }
\item{ a string with the name of the variable in the data.frame }
}
}
  \item{data}{
data.frame if used character string for (pred, event)
}
  \item{vnames}{
a vector of character strings with the labels for performance values in top legend
}
  \item{cutoffs}{
a vector of optional cutoffs, to draw vertical lines
}
  \item{cutnames}{
a vector of character strings with the names for optional cutoffs
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
  \item{xticks}{
the number of ticks on the x axis or a vector of exact ticks
}
  \item{col}{
a vector of 4 colors, for the 4 areas in the plot (TP, TN, FP, FN)
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
  \item{nints}{
number of points for the areas and curves, precision of calculation
}
  \item{lty}{
a vector of line types
}
  \item{lwd}{
the line width for all lines, cutoff lines too
}
  \item{stats}{
a number or vector of numbers from 1 to 4 indicate what statistics are to be drawn
\itemize{
\item{ 1. Sensitivity }
\item{ 2. Specificity }
\item{ 3. PPV   }
\item{ 4. NPV   }
}
}
  \item{youden}{
logical asking whether to plot red line for youden-index maximum
}
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
}
\examples{
performance.plot.ade(rnorm(100), round(runif(100)))
}
\keyword{ Sensitivity }
\keyword{ Specificity }

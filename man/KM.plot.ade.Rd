\name{KM.plot.ade}
\alias{KM.plot.ade}
\title{
Kaplan-Meier curves
}
\description{
plot Kaplan-Meier survival curves
}
\usage{
KM.plot.ade(time, event, group=NULL, data=NULL, vnames=NULL,
            main="Kaplan-Meier Plot", xlab="Follow-Up Time",
            ylab="Cumulative Survival", xlim=NULL, ylim=NULL, xticks=NULL,
            legendon='bottomleft', lwd=2, lty=1,
            col=NULL, tcol=NULL, bgcol=NULL, pdigs=4,
            CI=FALSE, ycut=TRUE, zenspoints=FALSE, test=FALSE, wall=0)
}
\arguments{
\item{time}{
\itemize{
\item{ a numeric vector for time }
\item{ a character string with the name of time variable in the data.frame }
}
}
\item{event}{
\itemize{
\item{ a numeric vector for event (censoring) }
\item{ a character string with the name of event variable in the data.frame }
}
}
\item{group}{
\itemize{
\item{ a factor to group the curves }
\item{ a character string with the name of the group variable in the data.frame }
}
}
\item{data}{
data.frame if used character string for (time,event,group)
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
  \item{xlim}{
the x limits (x1, x2) of the plot
}
  \item{ylim}{
the y limits (y1, y2) of the plot
}
  \item{xticks}{
the number of ticks on the x axis or a vector of exact ticks
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
  \item{lwd}{
the line width
}
  \item{lty}{
the line type
}
  \item{col}{
a vector of colors for each curve
}
  \item{tcol}{
color of the text in whole plot
}
  \item{bgcol}{
the background color for plot dekoration
}
  \item{pdigs}{
a number indicate how to round p-values.: see ?format.pval.ade
}
  \item{CI}{
logical asking whether to plot confidence intervals
}
  \item{ycut}{
logical asking whether to cut the y axis, if the space is not used
}
  \item{zenspoints}{
logical asking whether to draw censored datapoint
}
  \item{test}{
logical asking whether to test for the difference between curves
}
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
}
\details{
The p-value comes from a logrank test
}
\examples{
times<-  sort(abs(rnorm(1000)))
events<- round(runif(1000))
groups<- round(runif(1000, 0, 3))
KM.plot.ade(times, events,  groups, wall=2)
}
\keyword{ Kaplan-Meier  }

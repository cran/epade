\name{roc.plot.ade}
\alias{roc.plot.ade}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ROC-curves plot
}
\description{
Function to plot ROC curves with AUC calculation
}
\usage{
roc.plot.ade(pred, event, group=NULL, data=NULL, vnames=NULL,
             main="", xlab="1-Specificity", ylab="Sensitivity",
             digits=3, pdigs=4, lty=1, lwd=2,
             col=NULL, tcol=NULL, bgcol=NULL,
             wall=0, test=FALSE, CC=TRUE, auc=TRUE, diag=TRUE)
}
\arguments{
  \item{pred}{
\itemize{
\item{ a list of numeric predictor variables }
\item{ a vector of character strings with the names of the predictors in data.frame }
}
}
  \item{event}{
\itemize{
\item{ a numeric event variable }
\item{ a character strings with the names of event variable in data.frame }
}
}
  \item{group}{
\itemize{
\item{ a factor to group the curves  }
\item{ a character strings with the names of factor variable in data.frame }
}
}
  \item{data}{
data.frame if used character string for (pred,event,group)
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
  \item{digits}{
how many significant digits are to be shown for AUC
}
  \item{pdigs}{
a number indicate how to round p-values.: see ?format.pval.ade
}
  \item{lty}{
a single line type or a vector og line types
}
  \item{lwd}{
the line width
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
  \item{wall}{
a number between 0 and 6 for selection the dekoration style of the plot.
}
  \item{test}{
logical asking whether to test for the difference between curves
}
  \item{CC}{
logical asking whether to use complete cases for all curves
}
  \item{auc}{
logical asking whether to draw AUC in legend
}
  \item{diag}{
logical asking whether to plot a diagonal line
}
}
\details{
if test is TRUE the function perform a DeLong-DeLong test for correlated ROC-curves
}
\examples{
# simple curve
event<-rbinom(1000, size=1, prob=0.3)
pred <- event+rnorm(1000)
roc.plot.ade(pred, event)
# grouped
group=rbinom(1000, 1 ,0.5)
roc.plot.ade(pred, event, group, wall=2)
# comparison of two predictors
pred2 <- event+rnorm(1000, 0, 2)
roc.plot.ade(list(pred, pred2), event, test=TRUE, wall=3)
}
\keyword{ ROC }
\keyword{ AUC }

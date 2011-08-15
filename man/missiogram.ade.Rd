\name{missiogram.ade}
\alias{missiogram.ade}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Missing Value Plot
}
\description{
Overview of missing values in a data.frame
}
\usage{
missiogram.ade(vars=NULL, vnames=NULL, data=NULL, ints=50, nvars=50,
               xlab="ID", ylab="Variables", main="Missing Value Plot",
               ylab2="N. Missings", col=NULL, tcol=NULL, bgcol=NULL, wall=0)
}
\arguments{
  \item{vars}{
a vector of character strings with names of variables in data.frame
}
  \item{vnames}{
a vector of character strings with labels for the variables
}
  \item{data}{
a data.frame, it is possible to give only the data.frame.
}
  \item{ints}{
a integer giving number of intervals on x axis
}
  \item{nvars}{
number of variables in data.frame to be shown if only the data.frame ist given
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
  \item{ylab2}{
a title for the second y axis
}
  \item{col}{
color of the symbols
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
}
\details{
One, two or three points indicate respectively number of missing values in this section.
More then 3 missing values will be shown with a semi-transparency surface over the section.
No semi-transparency means, all the values are missing in this section.
}
\examples{
data<-rnorm(1000)
data<-as.data.frame(data)
for(i in 1:20){
eval(parse(text=paste("data$var_", i, "<- rnorm(1000)", sep='')))
eval(parse(text=paste("data$var_", i,
"[round(runif(round(runif(1, 1, 100)), 1, 1000))]<-NA", sep='')))
}
missiogram.ade(data=data)
}
\keyword{ missings }

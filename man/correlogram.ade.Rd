\name{correlogram.ade}
\alias{correlogram.ade}
\title{
Correlogram plot
}
\description{
Draw a correlogram (A Correlation matrix)
}
\usage{
correlogram.ade(vars1, vnames1="noname", vars2, vnames2="noname",
                prediktors=0, data=NULL, xlab=NULL, ylab=NULL, main=NULL,
                method="p", digits=2, pdigs=4, pvals=TRUE, bars=TRUE,
                col=NULL, tcol=NULL, bgcol=NULL, wall=0)
}
\arguments{
  \item{vars1}{
a vector of character strings with the names of variables in data.frame (rows)
}
  \item{vnames1}{
a vector of character strings with the labels for vars1
}
  \item{vars2}{
a vector of character strings with the names of variables in data.frame (cols)
}
  \item{vnames2}{
a vector of character strings with the labels for vars2
}
  \item{prediktors}{
a vector of character strings with the names of variables for adjustment (partial correlation)
}
  \item{data}{
a data.frame
}
  \item{xlab}{
a title for the x axis
}
  \item{ylab}{
a title for the y axis
}
  \item{main}{
a main title of the plot, it will be drawn below the plot
}
  \item{method}{
 a single keyword from:
 \itemize{
 \item{"pearson"}
 \item{"spearman"}
 \item{"kendall"}
}
indicating which correlation coefficient is to be used.
}
  \item{digits}{
how many significant digits are to be used
}
  \item{pdigs}{
a number indicate how to round p-values.: see ?format.pval.ade
}
  \item{pvals}{
logical asking whether to draw p-values
}
  \item{bars}{
logical asking whether to draw bars
}
  \item{col}{
not used
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
\examples{
data<-rnorm(1000)
data<-as.data.frame(data)
for(i in 1:9){
eval(parse(text=paste("data$var_", i, "<- rnorm(1000)", sep='')))
eval(parse(text=paste("data$var_", i,
"[round(runif(round(runif(1, 1, 100)), 1, 1000))]<-NA", sep='')))
}
correlogram.ade(vars1=c('var_1', 'var_2', 'var_3', 'var_4', 'var_5'),
                vars2=c('var_6', 'var_7', 'var_8', 'var_9', 'var_3'),
                data=data)
}
\keyword{ correlation }

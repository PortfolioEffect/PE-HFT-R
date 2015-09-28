\name{util_plot2df}
\alias{util_plot2df}
\title{Line plot of portfolio metric (for a dataframe)}
\usage{util_plot2df(formula,
data,
title=NULL,
subtitle=NULL,
font_size=10,
line_size=1.2,
bw=FALSE,
axis.text.size=1.5,
title.size=2)
}
\arguments{
  \item{formula}{Formula that describes data titles to be plotted.}
  \item{data}{Dataframe with metric data.}  
  \item{title}{Plot title.}
  \item{subtitle}{Plot subtitle.}
  \item{font_size}{Baseline font size.}
  \item{line_size}{Line thickness.}
  \item{bw}{Black and white color scheme flag.}
  \item{axis.text.size}{Axis font size.}
  \item{title.size}{Title font size.}
}
\value{plot
}
\description{Draws a new line plot using a a dataframe with one or many metric values.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
data(aapl.data) 
data(goog.data) 
data(spy.data) 
portfolio<-portfolio_create(priceDataIx=spy.data)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s')
portfolio_addPosition(portfolio,'GOOG',100,priceData=goog.data)  
portfolio_addPosition(portfolio,'AAPL',300,priceData=aapl.data) 
portfolio_addPosition(portfolio,'SPY',150,priceData=spy.data)
metric=portfolio_return(portfolio)
n=NROW(metric)
return<-data.frame(Data=metric[,2],Time=metric[,1],Legend=array("Return",dim=n))
util_plot2df(Data~Time,return,title="Portfolio return")
}}
\keyword{PortfolioEffectHFT}
\keyword{util_plot2df}
\name{util_plot2d}
\alias{util_plot2d}
\title{Line plot of portfolio metric (for a time series)}
\usage{util_plot2d(metric,
title=NULL,
subtitle=NULL,
font_size=10,
line_size=1.2,
bw=FALSE,
Legend="",
axis.text.size=1.5,
title.size=2)
}
\arguments{ 
  \item{metric}{Time series  of (time, value) returned by metric functions.}
  \item{title}{Plot title.}
  \item{subtitle}{Plot subtitle.}
  \item{font_size}{Baseline font size.}
  \item{line_size}{Line thickness.}
  \item{bw}{Black and white color scheme flag.}
  \item{Legend}{Plot legend.}  
  \item{axis.text.size}{Axis font size.}
  \item{title.size}{Title font size.}
}
\value{plot
}
\description{Draws a new line plot using a time series of metric values.}
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
util_plot2d(portfolio_return(portfolio),title="Portfolio return")
}}
\keyword{PortfolioEffectHFT}
\keyword{util_plot2d}
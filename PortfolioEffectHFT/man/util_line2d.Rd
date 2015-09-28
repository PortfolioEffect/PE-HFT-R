\name{util_line2d}
\alias{util_line2d}
\title{Adds line chart to existing plot}
\usage{util_line2d(metric,Legend="")
}
\arguments{
  \item{metric}{Time series of (time, value) returned by metric functions.}
  \item{Legend}{Legend of the line}  
}
\value{plot
}
\description{Adds another line chart on the existing plot using a time series of metric values.}
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
util_plot2d(position_return(portfolio,'GOOG'),title="Positions returns",Legend="GOOG")+
util_line2d(position_return(portfolio,'AAPL'),Legend="AAPL")+
util_line2d(position_return(portfolio,'SPY'),Legend="SPY")
}}
\keyword{PortfolioEffectHFT}
\keyword{util_line2d}
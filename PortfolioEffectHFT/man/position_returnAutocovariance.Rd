\name{position_returnAutocovariance}
\alias{position_returnAutocovariance}
\title{Position Return Autocovariance}
\usage{position_returnAutocovariance(portfolio,symbol,lag=10)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of an instrument}
  \item{lag}{Time lag (in seconds) between observations in question.}
}

\value{Numeric vector of position returns.
}
\description{Computes autocovariance of position returns for a certain time lag.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
data(aapl.data) 
data(goog.data) 
data(spy.data) 
portfolio<-portfolio_create(priceDataIx=spy.data)
portfolio_settings(portfolio,windowLength = '3600s',resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'GOOG',100,priceData=goog.data)  
portfolio_addPosition(portfolio,'AAPL',300,priceData=aapl.data) 
portfolio_addPosition(portfolio,'SPY',150,priceData=spy.data)
util_plot2d(position_returnAutocovariance(portfolio,'GOOG',lag=15))

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(position_returnAutocovariance(portfolio,'AAPL',lag=10))
}}
\keyword{PortfolioEffectHFT}
\keyword{position_returnAutocovariance}
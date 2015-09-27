\name{portfolio_upsideDownsideVarianceRatio}
\alias{portfolio_upsideDownsideVarianceRatio}
\title{Portfolio Upside/Downside Variance Ratio}
\usage{portfolio_upsideDownsideVarianceRatio(portfolio,thresholdReturn)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{thresholdReturn}{Return value to be used as a cut-off point}
}
\value{
Numeric vector of portfolio upside/downside variance ratio values.
}
\description{Computes upside to downside variance ratio of a portfolio.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/absolute-risk-measures/upside-downside-variance-ratio}
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{portfolio_upsideVariance}} \code{\link{portfolio_downsideVariance}}}
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
util_plot2d(portfolio_upsideDownsideVarianceRatio(portfolio,0.05))

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(portfolio_upsideDownsideVarianceRatio(portfolio,0.05))
}}
\keyword{PortfolioEffect}
\keyword{portfolio_upsideDownsideVarianceRatio}
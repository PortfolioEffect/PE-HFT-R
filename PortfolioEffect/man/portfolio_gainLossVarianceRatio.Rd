\name{portfolio_gainLossVarianceRatio}
\alias{portfolio_gainLossVarianceRatio}
\title{Portfolio Gain Loss Variance Ratio}
\usage{portfolio_gainLossVarianceRatio(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
}
\value{Numeric vector of portfolio gain/loss variance ratio values.
}
\description{Computes gain to loss variance ratio of portfolio returns.}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/absolute-risk-measures/gain-loss-variance-ratio}
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{portfolio_lossVariance}} \code{\link{portfolio_gainVariance}}}
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
util_plot2d(portfolio_gainLossVarianceRatio(portfolio))

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(portfolio_gainLossVarianceRatio(portfolio))
}}
\keyword{PortfolioEffect}
\keyword{portfolio_gainLossVarianceRatio}
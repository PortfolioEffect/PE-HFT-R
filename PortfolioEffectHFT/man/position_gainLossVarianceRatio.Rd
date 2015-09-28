\name{position_gainLossVarianceRatio}
\alias{position_gainLossVarianceRatio}
\title{Position Gain Loss Variance Ratio}
\usage{position_gainLossVarianceRatio(portfolio,symbol)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of an instrument}
}
\value{Numeric vector of position gain/loss variance ratio values.
}
\description{Computes gain to loss variance ratio of position returns.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/absolute-risk-measures/gain-loss-variance-ratio}
}
\seealso{\code{\link{position_gainVariance}} \code{\link{position_lossVariance}}  }
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
util_plot2d(position_gainLossVarianceRatio(portfolio,'GOOG'))

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(position_gainLossVarianceRatio(portfolio,'AAPL'))
}}
\keyword{PortfolioEffectHFT}
\keyword{position_gainLossVarianceRatio}
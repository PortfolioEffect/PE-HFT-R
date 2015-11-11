\name{position_upsideVariance}
\alias{position_upsideVariance}
\title{Position Upside Variance}
\usage{position_upsideVariance(portfolio,symbol,thresholdReturn)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of the instrument}
  \item{thresholdReturn}{Return value to be used as a cut-off point}
}
\value{
Numeric vector of position upside variance values.
}
\description{Computes upside variance of a position.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/absolute-risk-measures/upside-variance}
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{position_downsideVariance}} }
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
util_plot2d(position_upsideVariance(portfolio,'GOOG',0.05))

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(position_upsideVariance(portfolio,'AAPL',0.05))
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{position_upsideVariance}
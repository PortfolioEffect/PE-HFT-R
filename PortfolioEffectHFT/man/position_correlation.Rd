\name{position_correlation}
\alias{position_correlation}
\title{Position Correlation}
\usage{position_correlation(portfolio, symbol1, symbol2)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol1}{First symbol name}
  \item{symbol2}{Second symbol name}
}
\value{Numeric vector of correlations values. 
}
\description{Computes correlation of position returns.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/relative-risk-measures/correlation}
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{position_covariance}} }
\examples{
\dontrun{
data(aapl.data) 
data(goog.data) 
data(spy.data) 
portfolio<-portfolio_create(priceDataIx=spy.data)
portfolio_settings(portfolio,windowLength = '3600s',resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'GOOG',100,priceData=goog.data)  
portfolio_addPosition(portfolio,'AAPL',300,priceData=aapl.data) 
util_plot2d(position_correlation(portfolio,'GOOG','AAPL'),
title="Position Correlation, GOOG and AAPL")

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(position_correlation(portfolio,'AAPL','C'),
title="Position Correlation, AAPL and C")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{position_correlation}
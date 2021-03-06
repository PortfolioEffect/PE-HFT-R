\name{position_rachevRatio}
\alias{position_rachevRatio}
\title{Position Rachev Ratio}
\usage{position_rachevRatio(portfolio,symbol,confidenceIntervalA=0.95,confidenceIntervalB=0.95)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of the instrument}
  \item{confidenceIntervalA}{Confidence interval (in decimals) to be used as a cut-off point in the numerator}
  \item{confidenceIntervalB}{Confidence interval (in decimals) to be used as a cut-off point in the denominator}
}
\value{Numeric vector of position Rachev ratio values.
}
\description{
Computes Rachev ratio of a position at given confidence intervals.
Computation employs distribution skewness and kurtosis to account for non-normality.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/tail-risk-measures/rachev-ratio}
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
util_plot2d(position_rachevRatio(portfolio,'GOOG',0.95,0.95),title="Position Rachev Ratio, GOOG")

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(position_rachevRatio(portfolio,'AAPL',0.95,0.95),title="Position Rachev Ratio, AAPL")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{position_rachevRatio}
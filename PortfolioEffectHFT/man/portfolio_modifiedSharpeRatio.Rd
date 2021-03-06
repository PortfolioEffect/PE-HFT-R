\name{portfolio_modifiedSharpeRatio}
\alias{portfolio_modifiedSharpeRatio}
\title{Portfolio Modified Sharpe Ratio}
\usage{portfolio_modifiedSharpeRatio(portfolio,confidenceInterval=0.95)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{confidenceInterval}{ Confidence interval (in decimals) to be used as a cut-off point }
}
\value{Numeric vector of portfolio modified Sharpe Ratio values.
}
\description{Computes Modified Sharpe Ratio of a portfolio at a given confidence interval. 
Computation employs distribution's skewness and kurtosis to account for non-normality.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/tail-risk-measures/modified-sharpe-ratio.php}
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{ \code{\link{portfolio_sharpeRatio}}}
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
util_plot2d(portfolio_modifiedSharpeRatio(portfolio,0.95),title="Portfolio Modified Sharpe Ratio")

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(portfolio_modifiedSharpeRatio(portfolio,0.95),title="Portfolio Modified Sharpe Ratio")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{portfolio_modifiedSharpeRatio}
\name{portfolio_sortinoRatio}
\alias{portfolio_sortinoRatio}
\title{Portfolio Sortina Ratio}
\usage{portfolio_sortinoRatio(portfolio,thresholdReturn)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{thresholdReturn}{Return value to be used as a cut-off point}
}
\value{Numeric vector of portfolio Sortino ratio values.
}
\description{Computes Sortino ratio of a portfolio.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/absolute-risk-adjusted-measures/sortino-ratio}
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{portfolio_sharpeRatio}} \code{\link{portfolio_calmarRatio}} \code{\link{portfolio_omegaRatio}} }
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
util_plot2d(portfolio_sortinoRatio(portfolio,0.05),title="Portfolio Sortina Ratio")

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(portfolio_sortinoRatio(portfolio,0.05),title="Portfolio Sortina Ratio")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{portfolio_sortinoRatio}
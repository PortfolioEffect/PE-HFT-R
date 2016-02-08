\name{portfolio_txnCosts}
\alias{portfolio_txnCosts}
\title{Portfolio Transactional Costs}
\usage{portfolio_txnCosts(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
}
\value{Numeric vector of portfolio transactional costs.
}
\description{Computes monetary value of accumulated portfolio transactional costs.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{

data(aapl.data) 
data(goog.data) 
data(spy.data) 
portfolio<-portfolio_create(priceDataIx=spy.data)
portfolio_settings(portfolio,windowLength = '3600s',resultsSamplingInterval='60s',txnCostFixed=100)
portfolio_addPosition(portfolio,'GOOG',c(100,200),time=c(1412256601000,1412266600000),
priceData=goog.data) 
portfolio_addPosition(portfolio,'AAPL',c(300,150),time=c(1412266600000,1412276600000),
priceData=aapl.data) 
portfolio_addPosition(portfolio,'SPY',150,priceData=spy.data)
util_plot2d(portfolio_txnCosts(portfolio),title="Portfolio Transactional Costs")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{portfolio_txnCosts}
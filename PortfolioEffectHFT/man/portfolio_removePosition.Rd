\name{portfolio_removePosition}
\alias{portfolio_removePosition}
\title{Remove position from portfolio}
\usage{portfolio_removePosition(portfolio,symbol)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of an instrument}
}
\value{Void}
\description{Removes position from an existing portfolio.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{portfolio_addPosition}} \code{\link{portfolio_create}}  }
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
portfolio_removePosition(portfolio,'GOOG')
portfolio_symbols(portfolio)

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
portfolio_removePosition(portfolio,'C')
portfolio_symbols(portfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{portfolio_removePosition}
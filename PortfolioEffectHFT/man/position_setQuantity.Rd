\name{position_setQuantity}
\alias{position_setQuantity}
\title{Set Position Quantity}
\usage{position_setQuantity(portfolio,symbol,quantity)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of the instrument}
  \item{quantity}{One dimensional vector of position quantities or an integer number if quantity is constant} 
}
\value{Void
}
\description{Sets new position quantity.
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
print(portfolio)

position_setQuantity(portfolio,'GOOG',400)
print(portfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{position_setQuantity}
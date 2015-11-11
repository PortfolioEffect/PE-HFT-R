\name{position_correlationMatrix}
\alias{position_correlationMatrix}
\title{Position Correlation Matrix}
\usage{position_correlationMatrix(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
}
\value{Numeric matrix of position correlations. 
}
\description{Computes correlation matrix of position returns.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/relative-risk-measures/correlation}
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{position_correlation}} }
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
position_correlationMatrix(portfolio)

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
position_correlationMatrix(portfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{position_correlationMatrix}
\name{position_upNumberRatio}
\alias{position_upNumberRatio}
\title{Position Up Number Ratio}
\usage{position_upNumberRatio(portfolio,symbol)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of an instrument}
}

\value{Numeric vector of position up number ratio values.
}
\description{Computes up number ratio of a position.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/relative-return-measures/up-number-ratio}
}
\seealso{\code{\link{position_downNumberRatio}} }
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
util_plot2d(position_upNumberRatio(portfolio,'GOOG'),title="Position Up Number Ratio, GOOG")

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(position_upNumberRatio(portfolio,'AAPL'),title="Position Up Number Ratio, AAPL")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{position_upNumberRatio}
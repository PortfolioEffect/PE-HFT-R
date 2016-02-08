\name{position_upCaptureRatio}
\alias{position_upCaptureRatio}
\title{Position Up Capture Ratio}
\usage{position_upCaptureRatio(portfolio,symbol)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of an instrument}
}

\value{Numeric vector of position up capture ratio values.
}
\description{Computes up capture ratio of a position.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/relative-return-measures/up-capture-ratio}
}
\seealso{\code{\link{position_downCaptureRatio}} }
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
util_plot2d(position_upCaptureRatio(portfolio,'GOOG'),title="Position Up Capture Ratio, GOOG")

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(position_upCaptureRatio(portfolio,'AAPL'),title="Position Up Capture Ratio, AAPL")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{position_upCaptureRatio}
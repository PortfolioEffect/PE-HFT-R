\name{position_pdf}
\alias{position_pdf}
\title{Probability Density Function of Position Returns}
\usage{position_pdf(portfolio,
 				   symbol,
 				   pValueLeft,
 				   pValueRight,
 				   nPoints,
 				   addNormalDensity=FALSE)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function.}
  \item{symbol}{Unique identifier of an instrument} 
  \item{pValueLeft}{Left limit of probability density value in decimals.}
  \item{pValueRight}{Right limit of probability density value in decimals.}
  \item{nPoints}{Number of approximation points for the PDF function.}
  \item{addNormalDensity}{Flag used to add normal density to the final result. Defaults to FALSE.}
}
\value{List of probability density values}
\description{Computes probability density of position returns for a given interval (pValueLeft, pValueRight) at nPoints of approximation. 
Probability density is computed based on a "densityModel" specified in \link[=portfolio_settings]{portfolio_settings( )} method.}
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
util_plotDensity(position_pdf(portfolio,'GOOG',pValueLeft=0.2,pValueRight=0.8,
nPoints=100,addNormalDensity=TRUE))

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plotDensity(position_pdf(portfolio,'AAPL',pValueLeft=0,pValueRight=1,
nPoints=100,addNormalDensity=TRUE))
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{position_pdf}
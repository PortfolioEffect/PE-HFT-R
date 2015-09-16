\name{position_expectedUpsideReturn}
\alias{position_expectedUpsideReturn}
\title{Position Expected Upside Return}
\usage{position_expectedUpsideReturn(portfolio,symbol,thresholdReturn)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{symbol}{Unique identifier of the instrument}
  \item{thresholdReturn}{Return value to be used as a cut-off point}
}
\value{
Numeric vector of position expected upside returns.
}
\description{Computes position cumulative expected return above a certain threshold.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/absolute-return-measures/expected-upside-return}
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{position_expectedDownsideReturn}} }
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
util_plot2d(position_expectedUpsideReturn(portfolio,'GOOG',0.05))

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
util_plot2d(position_expectedUpsideReturn(portfolio,'AAPL',0.05))
}}
\keyword{PortfolioEffect}
\keyword{position_expectedUpsideReturn}
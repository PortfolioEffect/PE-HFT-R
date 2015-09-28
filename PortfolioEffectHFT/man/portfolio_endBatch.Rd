\name{portfolio_endBatch}
\alias{portfolio_endBatch}
\title{Ends Metrics Batch}
\usage{portfolio_endBatch(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
}
\value{Void}
\description{Marks the end of a metrics batch and starts batch group processing. 
Once the method finishes executing, you could retrieve computed metric values by calling same metrics once again. 
The batch is finished by a call to \link[=portfolio_endBatch]{portfolio_endBatch( )} function. 
To maximize speed improvements from batching, group those metrics that operate on the same portfolio or position. 
This way they will be computed in one pass over the data.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'GOOG',150)

portfolio_startBatch(portfolio)

portfolio_VaR(portfolio,0.05)
position_VaR(portfolio,"AAPL",0.05)
position_VaR(portfolio,"GOOG",0.05)		

portfolio_endBatch(portfolio)

util_plot2d(position_VaR(portfolio,"AAPL",0.05),title="Value at Risk , daily",Legend="AAPL")+
util_line2d(position_VaR(portfolio,"GOOG",0.05),Legend="GOOG")+
util_line2d(portfolio_VaR(portfolio,0.05),Legend="Portfolio")
}}
\keyword{PortfolioEffectHFT}
\keyword{portfolio_endBatch}
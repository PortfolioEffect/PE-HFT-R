\name{portfolio_startBatch}
\alias{portfolio_startBatch}
\title{Starts Metrics Batch}
\usage{portfolio_startBatch(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
}
\value{Void}
\description{Marks the start of a metrics batch. 
All metrics called after the marker would be grouped in one compute batch. 
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

portfolio_VaR(portfolio,0.95)
position_VaR(portfolio,"AAPL",0.95)
position_VaR(portfolio,"GOOG",0.95)		

portfolio_endBatch(portfolio)

util_plot2d(position_VaR(portfolio,"AAPL",0.95),title="Value at Risk , daily",legend="AAPL")+
        util_line2d(position_VaR(portfolio,"GOOG",0.95),legend="GOOG")+
        util_line2d(portfolio_VaR(portfolio,0.95),legend="Portfolio")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{portfolio_startBatch}
\keyword{portfolio_endBatch}
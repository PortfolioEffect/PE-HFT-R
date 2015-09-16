\name{portfolio_create}
\alias{portfolio_create}
\title{Creates new portfolio}
\usage{portfolio_create(index, fromTime, toTime, priceDataIx)
}
\arguments{
  \item{index}{Index symbol that should be used in the Single Index Model. Defaults to "SPY".}
  \item{fromTime}{Start of market data interval in "yyyy-MM-dd hh:mm:ss" format when internal market data is used. 
   Offset from last available date/time by N days is denoted as "t-N" (e.g. "t-7" denotes offset by 7 days).}
  \item{toTime}{End of market data interval in "yyyy-MM-dd hh:mm:ss" format when internal market data is used.
   Offset from last available date/time by N days is denoted as "t-N" (e.g. "t-7" denotes offset by 7 days).}
  \item{priceDataIx}{Vector of (time, price) observations for market index asset when external market data is used.  }
}
\value{portfolio object
}
\description{Creates new empty portfolio.\cr
To add positions use \link[=portfolio_addPosition]{portfolio_addPosition( )}.\cr
To remove positions use \link[=portfolio_removePosition]{portfolio_removePosition( )}.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{portfolio_addPosition}} \code{\link{portfolio_settings}} \code{\link{portfolio_removePosition}} }
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

portfolio<-portfolio_create(priceDataIx=spy.data)
portfolio_settings(portfolio,windowLength = '3600s',resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'GOOG',c(100,200),time=c(1412256601000,1412266600000),
priceData=goog.data) 
portfolio_addPosition(portfolio,'AAPL',c(300,150),time=c(1412266600000,1412276600000),
priceData=aapl.data) 
portfolio_addPosition(portfolio,'SPY',150,priceData=spy.data)
util_plot2d(portfolio_expectedReturn(portfolio))

portfolio<-portfolio_create(fromTime="2014-09-01 09:00:00", toTime="2014-09-14 16:00:00")
portfolio_settings(portfolio,windowLength = '3600s',resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,c('SPY','C'),c(500,600))
util_plot2d(portfolio_expectedReturn(portfolio))

portfolio<-portfolio_create(fromTime="2014-10-02 09:30:00", toTime="2014-10-02 16:00:00")
portfolio_settings(portfolio,windowLength = '3600s',resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,c('SPY','C'),c(500,600))
portfolio_addPosition(portfolio,'GOOG',100,priceData=goog.data)
portfolio_addPosition(portfolio,'AAPL',c(300,150),time=c(1412266600000,1412276600000),
priceData=aapl.data)
util_plot2d(portfolio_expectedReturn(portfolio))

portfolio<-portfolio_create(fromTime="t-2", toTime="t")
portfolio_settings(portfolio,windowLength = '3600s',resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,c('SPY','C'),c(500,600))
util_plot2d(portfolio_expectedReturn(portfolio))
}}
\keyword{PortfolioEffect}
\keyword{portfolio_create}
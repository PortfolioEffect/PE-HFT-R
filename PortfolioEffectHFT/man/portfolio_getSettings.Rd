\name{portfolio_getSettings}
\alias{portfolio_getSettings}
\title{Get Portfolio Settings}
\usage{portfolio_getSettings(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
}
\value{List with portfolio settings.}
\description{Method returns active list of settings of a given portfolio.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
portfolio_settings(portfolio,
				   windowLength='600s',
				   resultsSamplingInterval = '10s')
settings=portfolio_getSettings(portfolio)
}}
\keyword{PortfolioEffectHFT}
\keyword{portfolio_getSettings}
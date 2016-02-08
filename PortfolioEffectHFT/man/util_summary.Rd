\name{util_summary}
\alias{util_summary}
\title{Portfolio Summary Plot}

\usage{util_summary(portfolio, bw = FALSE)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{bw}{Black and white color scheme flag.}
}
\description{
Plots a number of charts to give summary of a given portfolio. 
}

\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{portfolio_create}} }
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
util_summary(portfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{plot market data, plot}
\keyword{util_summary}
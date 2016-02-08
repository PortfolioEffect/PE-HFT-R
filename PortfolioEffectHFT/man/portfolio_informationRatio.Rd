\name{portfolio_informationRatio}
\alias{portfolio_informationRatio}
\title{Portfolio Information Ratio}
\usage{portfolio_informationRatio(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
}
\value{Numeric vector of portfolio information ratio values.
}
\description{Computes information ratio of a portfolio.
}
\note{\url{https://www.portfolioeffect.com/docs/glossary/measures/relative-risk-adjusted-measures/information-ratio}
}
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
util_plot2d(portfolio_informationRatio(portfolio),title="Portfolio Information Ratio")
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{portfolio_informationRatio}
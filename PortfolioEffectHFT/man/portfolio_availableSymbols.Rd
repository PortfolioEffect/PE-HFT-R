\name{portfolio_availableSymbols}
\alias{portfolio_availableSymbols}
\title{Get All Symbol List}
\usage{portfolio_availableSymbols(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
}
\description{
Returns a list of symbols .
}
\value{List of symbols, exchanges and descriptions
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{
dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
list=portfolio_availableSymbols(portfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{portfolio_availableSymbols}
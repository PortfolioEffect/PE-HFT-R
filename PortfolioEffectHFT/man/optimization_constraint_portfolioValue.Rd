\name{optimization_constraint_portfolioValue}
\alias{optimization_constraint_portfolioValue}
\title{Portfolio Optimization - Portfolio Value Constraint}
\usage{optimization_constraint_portfolioValue(optimizer,
constraintValue)
}
\arguments{
  \item{optimizer}{Optimizer object created using \link[=optimization_goal]{optimization_goal( )} function}
  \item{constraintValue}{Portfolio value that should be used to compute resulting position quantities based on optimal weights}  
}
\value{Optimizer object.}
\description{Adds portfolio optimization constraint restricting optimal portfolio's monetary value to a certain number at every step of optimization algorithm.}
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
optimizer<-optimization_goal(portfolio,"SharpeRatio","maximize")
optimizer=optimization_constraint_portfolioValue(optimizer,10^9)
optimalPortfolio<-optimization_run(optimizer)
print(optimalPortfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, market data, optimization, realtime analytics, risk, risk management, trading, trading strategies}
\keyword{optimization_constraint_portfolioValue}
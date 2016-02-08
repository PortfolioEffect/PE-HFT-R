\name{optimization_constraint_beta}
\alias{optimization_constraint_beta}
\title{Portfolio Optimization - Beta Constraint}
\usage{optimization_constraint_beta(optimizer,
constraintType=c("=", ">=", "<="),
constraintValue)
}
\arguments{
  \item{optimizer}{Optimizer object created using \link[=optimization_goal]{optimization_goal( )} function}
  \item{constraintType}{Optimization constraint type:\cr
  "=" - an equality constraint,\cr
  ">=" - an inclusive lower bound constraint,\cr
  "<=" - an inclusive upper bound constraint
  }
  \item{constraintValue}{Value to be used as a constraint equality or boundary}  
}
\value{Optimizer object.}
\description{Adds portfolio optimization constraint restricting optimal portfolio's beta to a certain range.}
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
optimizer<-optimization_goal(portfolio,"Return","maximize")
optimizer=optimization_constraint_beta(optimizer,"<=",0.5)
optimalPortfolio<-optimization_run(optimizer)
print(optimalPortfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, market data, optimization, realtime analytics, risk, risk management, trading, trading strategies}
\keyword{optimization_constraint_beta}
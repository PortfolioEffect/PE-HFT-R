\name{optimization_info}
\alias{optimization_info}
\title{Porfolio Optimization - Print Optimization Details}
\usage{optimization_info(portfolio)
}
\arguments{
  \item{portfolio}{Portfolio object returned by \link[=optimization_run]{optimization_run( )} function}
}
\description{Prints optimization details (constraint violations, local optima and etc.) for an optimal portfolio.}
\value{
Prints summary table.
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"

# create portfolio
portfolio=portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = "3600s", 
resultsSamplingInterval="60s")
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 

# set optimization goals and constraints
optimizer=optimization_goal(portfolio,"Return","maximize")
optimizer=optimization_constraint_beta(optimizer,"<=",0.5)

# run optimization and print optimization details
optimalPortfolio=optimization_run(optimizer) 
optimization_info(optimalPortfolio)
}}
\keyword{PortfolioEffect}
\keyword{optimization_info}
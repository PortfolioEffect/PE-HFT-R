\name{optimization_goal}
\alias{optimization_goal}
\title{Porfolio Optimization - Set Optimization Goal}
\usage{optimization_goal(portfolio,
				   goal=c("EquiWeight",
				   		  "ContraintsOnly",
				   		  "Variance",
				   		  "VaR",
				   		  "CVaR",
				   		  "ExpectedReturn",
				   		  "Return",
				   		  "SharpeRatio",
				   		  "ModifiedSharpeRatio",
				   		  "StarrRatio"
				   		  ),
				   direction=c("minimize", 
				   			   "maximize"),
				   confidenceInterval=0.95,
		           forecastPortfolioWindow='1m',
				   forecastTimeStep='1m',
				   forecastType=c("exp_smoothing","simple"),
				   forecastExponentialWindow='5m',
				   errorInDecimalPoints=1e-12,
				   globalOptimumProbability=0.99)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{goal}{Choose optimization goal:\cr
  "Variance" - portfolio returns variance,\cr
  "VaR" - portfolio Value-at-Risk,\cr
  "CVaR" - portfolio Expected Tail Loss,\cr
  "ExpectedReturn" - portfolio expected return,\cr
  "Return" - portfolio return,\cr
  "SharpeRatio" - portfolio Sharpe Ratio,\cr
  "ModifiedSharpeRatio" - portfolio modified Sharpe Ratio,\cr
  "StarrRatio" - portfolio STARR Ratio,\cr
  "EquiWeight" - no optimization is performed, constraints are not processes. Portfolio positions are returned with equal weights,\cr
  "ContraintsOnly" - no optimization is performed. This is used for returning portfolio that meets specified set of constraints.
  }  
  \item{direction}{choose direction of optimization algorithm:\cr
  "minimize" - maximization goal,\cr
  "maximize" - minimization goal
  }
  \item{confidenceInterval}{Confidence interval (in decimals) to be used as a cut-off point. Applicable for "VaR", "CVaR", "ModifiedSharpeRatio", "StarrRatio" metrics only.}
  \item{forecastPortfolioWindow}{Rolling window length for metric estimations and position history (look-behind duration) used in computing forecast values. Available interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year), "all" - all observations are used. Default value is "1d" - one trading day .}
  \item{forecastTimeStep}{Forecast time step length (look-ahead duration). Available interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year). Default value is "1m" - one trading day.}
  \item{forecastType}{Forecast algorithm, if user-defined metric forecasts are not provided: \cr
  	"simple" - use last available metric value,\cr
  	"exp_smoothing" - use automatic exponential smoothing. \cr
  	Default value is "exp_smoothing".
  }
  \item{forecastExponentialWindow}{Length of exponential window if forecastType is set to "exp_smoothing". vailable interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year). Default value is "1m" - one trading day.}
  \item{errorInDecimalPoints}{Estimation error in decimal points for computing optimal weights. Smaller value slows down optimization algorithm, but increases precision.}
  \item{globalOptimumProbability}{Required probability level of a global optimum. Higher value slows down optimization algorithm, but increases chance of finding globally optimal solution.}
}
\description{Initializes portfolio optimization goals and returns newly constructed optimizer object.}
\value{
Optimizer object.
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
optimizer<-optimization_goal(portfolio,goal="Return", 
direction="maximize")
optimizer=optimization_constraint_beta(optimizer,"<=",0.5)
optimalPortfolio<-optimization_run(optimizer)
print(optimalPortfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, market data, optimization, realtime analytics, risk, risk management, trading, trading strategies}
\keyword{optimization_goal}
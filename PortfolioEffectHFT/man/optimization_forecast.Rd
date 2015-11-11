\name{optimization_forecast}
\alias{optimization_forecast}
\title{Porfolio Optimization - Set Optimization Forecast}
\usage{optimization_forecast(optimizer,
 				   metricType,
				   symbol,
				   value,
				   time)
}
\arguments{
  \item{optimizer}{Optimizer object created using \link[=optimization_goal]{optimization_goal( )} function}
  \item{metricType}{Choose forecast metric type:\cr
  "Beta" - position beta,\cr
  "Variance" - position variance,\cr
  "Skewness" - position skewness,\cr
  "Kurtosis" - position kurtosis,\cr
  "Cumulant1" - position 1-th cumulant,\cr
  "Cumulant2" - position 2-th cumulant,\cr
  "Cumulant3" - position 3-th cumulant,\cr
  "Cumulant4" - position 4-th cumulant
  }   
  \item{symbol}{Unique identifier of an instrument}
  \item{value}{One dimensional vector of forecasted metric values.}
  \item{time}{One dimensional vector of time values (in milliseconds since the beginning of epoch).}
}
\value{Optimizer object.}
\description{Sets user-defined forecasted values for a given metric and returns modified optimizer object. 
By default value of the metric at time "t" is used as a forecast for "t+1". }
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
windowLength='10m'
  
  portfolio<-portfolio_create("2014-11-03 09:30:00","2014-11-03 16:00:00")
  
  # Add position AAPL and GOOG to portfolio
  portfolio_addPosition(portfolio,"AAPL",100)
  portfolio_addPosition(portfolio,"GOOG",200)
  portfolio_settings(portfolio,resultsSamplingInterval=windowLength)


  
forecastingPortfolio=portfolio_create(portfolio )
portfolio_settings(forecastingPortfolio,windowLength=windowLength)


  fReturn=list()
  for(symbol in portfolio_symbols(forecastingPortfolio)){
    fReturn[[symbol]]=position_expectedReturn(forecastingPortfolio,symbol)
    fReturn[[symbol]][,2]=c(fReturn[[symbol]][-1,2],fReturn[[symbol]][1,2])
  }
    
  optimizerTest1<-optimization_goal(portfolio,goal="SharpeRatio", 
  direction="maximize",windowLength=windowLength,forecastLength=windowLength)
 
  for(symbol in portfolio_symbols(portfolio)){
    optimizerTest1=optimization_forecast(optimizerTest1,'ExpReturn',
    symbol,fReturn[[symbol]][,2],fReturn[[symbol]][,1])
  }
  portfolioTempForecast=optimization_run(optimizerTest1)

  optimizerTest<-optimization_goal(portfolio,goal="SharpeRatio", direction="maximize")
  portfolioTemp=optimization_run(optimizerTest)
util_plot2d(portfolio_sharpeRatio(portfolioTemp),"SharpeRatio",legend="No forecast")+
util_line2d(portfolio_sharpeRatio(portfolioTempForecast),legend="Perfect forecast")

}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, market data, optimization, realtime analytics, risk, risk management, trading, trading strategies}
\keyword{optimization_forecast}
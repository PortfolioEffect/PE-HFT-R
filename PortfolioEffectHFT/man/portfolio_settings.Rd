\name{portfolio_settings}
\alias{portfolio_settings}
\title{Portfolio Settings}
\usage{portfolio_settings(portfolio,...)
}
\arguments{
  \item{portfolio}{Portfolio object created using \link[=portfolio_create]{portfolio_create( )} function}
  \item{...}{One of the following portfolio settings: \cr
  "portfolioMetricsMode" - Used to select method of computing portfolio metrics. Available modes are: "portfolio" - risk and performance metrics are computed based on the history of position rebalancing (see windowLength parameter) and should be used to backtest and compare trading strategies of different frequency and style, "price" - metrics are always computed without a history of previous rebalancing (classic interpretation). Defaults to "portfolio". \cr
  "windowLength" - Rolling window length for metric estimations and position rebalancing history. Available interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year), "all" - all observations are used. Default value is "1d" - one trading day . \cr
  "holdingPeriodsOnly - Used when portfolioMetricsMode = "portfolio". Defaults to FALSE, which means that trading strategy risk and performance metrics will be scaled to include intervals when trading strategy did not have market exposure. When TRUE, trading strategy metrics are scaled based on actual holding intervals when there was exposure to the market. \cr
  "shortSalesMode" - Used to specify how position weights are computed. Available modes are: "lintner" - the sum of absolute weights is equal to 1 (Lintner assumption), "markowitz" - the sum of weights must equal to 1 (Markowitz assumption). Defaults to "lintner", which implies that the sum of absolute weights is used to normalize investment weights. \cr
  "jumpsModel" - Used to select jump filtering mode when computing return statistics. Available modes are: "none" - price jumps are not filtered anywhere, "moments" - price jumps are filtered only when computing moments (variance, skewness, kurtosis) and derived metrics, "all" - price jumps are filtered everywhere. Defaults to "moments", which implies that only return moments and related metrics would be using jump-filtered returns in their calculations. \cr
  "noiseModel" - Used to enable microstructure noise model of distribution returns.  Defaults to TRUE, which implies that microstructure effects are modeled and resulting HF noise is removed from metric calculations. \cr
  "fractalPriceModel" - Used to enable mono-fractal price assumptions (fGBM) when time scaling return moments.  Defaults to TRUE, which implies that computed Hurst exponent is used to scale return moments. When FALSE, price is assumed to follow regular GBM with Hurst exponent = 0.5. \cr
  "factorModel" - Used to select factor model for computing portfolio metrics. Available models are: "sim" - portfolio metrics are computed using the Single Index Model, "direct" - portfolio metrics are computed using portfolio value itself. Defaults to "sim", which implies that the Single Index Model is used to compute portfolio metrics. \cr
  "densityModel" - Used to select density approximation model of return distribution. Available models are: "GLD" - Generalized Lambda Distribution, "CORNER_FISHER" - Corner-Fisher approximation, "NORMAL" - Gaussian distribution. Defaults to "GLD", which would fit a broad range of distribution shapes. \cr
  "driftTerm" - Used to enable drift term (expected return) when computing probability density approximation and related metrics (e.g. CVaR, Omega Ratio, etc.). Defaults to FALSE, which implies that distribution is centered around zero return. \cr
  "resultsSamplingInterval" - Interval to be used for sampling computed results before returning them to the caller. Available interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year), "last" - last result in a series is returned, "none" - no sampling. Large sampling interval would produce smaller vector of results and would require less time spent on data transfer. Default value of "1s" indicates that data is returned for every second during trading hours. \cr
  "inputSamplingInterval" - Interval to be used as a minimum step for sampling input prices. Available interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year), "none" - no sampling. Default value is "none", which indicates that no sampling is applied. \cr
  "timeScale" - Interval to be used for scaling return distribution statistics and producing metrics forecasts at different horizons. Available interval values are: "Xs" - seconds, "Xm" - minutes, "Xh" - hours, "Xd" - trading days (6.5 hours in a trading day), "Xw" - weeks (5 trading days in 1 week), "Xmo" - month (21 trading day in 1 month), "Xy" - years (256 trading days in 1 year), "all" - actual interval specified in during portfolio creation. Default value is "1d" - one trading day. \cr
  "txnCostPerShare" - Amount of transactional costs per share. Defaults to 0. \cr
  "txnCostFixed" - Amount of fixed costs per transaction. Defaults to 0. \cr
}
}
\value{Void}
\description{Advanced settings that regulate how porfolio metrics are computed, returned and stored.
Default:
		portfolioMetricsMode="portfolio",
		windowLength = "1d",
		holdingPeriodsOnly = FALSE,
		shortSalesMode = "lintner",
		jumpsModel = "moments",
		noiseModel = TRUE,
		fractalPriceModel=TRUE,
		factorModel = "sim",
		densityModel="GLD",
		driftTerm=TRUE,
		resultsSamplingInterval = "1s",
		inputSamplingInterval="none",
		timeScale="1d",
		txnCostPerShare=0,
		txnCostFixed=0}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{ \code{\link{portfolio_create}}  }
\examples{
\dontrun{ 
data(aapl.data) 
data(goog.data) 
data(spy.data) 
portfolio<-portfolio_create(priceDataIx=spy.data)
portfolio_settings(portfolio,
				   windowLength='3600s', 
				   holdingPeriodsOnly=TRUE,
				   resultsSamplingInterval = '10s')
portfolio_addPosition(portfolio,'GOOG',100,priceData=goog.data)  
portfolio_addPosition(portfolio,'AAPL',300,priceData=aapl.data) 
portfolio_addPosition(portfolio,'SPY',150,priceData=spy.data)
print(portfolio)

dateStart = "2014-11-17 09:30:00"
dateEnd = "2014-11-17 16:00:00"
portfolio<-portfolio_create(dateStart,dateEnd)
portfolio_settings(portfolio,portfolioMetricsMode="price",windowLength = '3600s',
resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,'AAPL',100)
portfolio_addPosition(portfolio,'C',300) 
portfolio_addPosition(portfolio,'GOOG',150)
plot(portfolio)
}}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, intraday analytics, market data, portfolio, portfolio management,realtime analytics, risk, risk management, toolbox tools, trading, trading strategies}
\keyword{portfolio_settings}
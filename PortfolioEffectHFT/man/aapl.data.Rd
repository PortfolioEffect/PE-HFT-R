\name{aapl.data}
\alias{aapl.data}
\alias{goog.data}
\alias{spy.data}
\title{Sample Price Data}
\usage{aapl.data
goog.data
spy.data
}
\value{Void}
\description{Sample historical prices of Google (goog.data), Apple (aapl.data) & S&P 500 ETF (spy.data)}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
data(aapl.data) 
data(goog.data) 
data(spy.data) 
util_plot2d(aapl.data,title="Price",legend="AAPL")+
        util_line2d(goog.data,legend="GOOG")+
        util_line2d(spy.data,legend="SPY")
}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, market data}
\keyword{aapl.data}
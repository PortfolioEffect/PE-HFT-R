\name{util_multiplot}
\alias{util_multiplot}
\title{Multiple ggplot2 charts on one page}
\usage{util_multiplot(..., cols=1)
}
\arguments{ 
  \item{...}{Any number of ggplot2 objects.}
  \item{cols}{Number of plot columns.}
}
\value{plot
}
\description{Plots several ggplot2 charts on one page.}
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
plot1<-util_ggplot(util_plot2d(position_weight(portfolio,'AAPL'),title="AAPL Weight"))
plot2<-util_ggplot(util_plot2d(position_weight(portfolio,'C'),title="C Weight"))
util_multiplot(plot1,plot2,cols=1)
}}
\keyword{PortfolioEffectHFT}
%\concept{plot market data, plot}
\keyword{util_multiplot}
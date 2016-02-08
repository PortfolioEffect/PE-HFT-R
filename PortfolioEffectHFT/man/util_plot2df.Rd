\name{util_plot2df}
\alias{util_plot2df}
\title{Line plot of portfolio metric (for a dataframe)}
\usage{util_plot2df(formula,
data,
title=NULL,
subtitle=NULL,
font_size=10,
line_size=1.2,
bw=FALSE,
axis.text.size=1.5,
title.size=2)
}
\arguments{
  \item{formula}{Formula that describes data titles to be plotted.}
  \item{data}{Dataframe with metric data.}  
  \item{title}{Plot title.}
  \item{subtitle}{Plot subtitle.}
  \item{font_size}{Baseline font size.}
  \item{line_size}{Line thickness.}
  \item{bw}{Black and white color scheme flag.}
  \item{axis.text.size}{Axis font size.}
  \item{title.size}{Title font size.}
}
\value{plot
}
\description{Draws a new line plot using a a dataframe with one or many metric values.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{
portfolio<-portfolio_create(fromTime="2014-10-02 09:30:00", toTime="2014-10-02 16:00:00")
portfolio_settings(portfolio,resultsSamplingInterval='60s')
portfolio_addPosition(portfolio,c('SPY','C'),c(500,600))
metricSPY=position_return(portfolio,'SPY')
n=NROW(metricSPY)
metricSPY<-data.frame(metricSPY,legend=array("SPY return",dim=n))
util_plot2df(value~time,metricSPY,title="Return, SPY")

metricC=position_return(portfolio,'C')
n=NROW(metricC)
metricC<-data.frame(metricC,legend=array("C return",dim=n))
metric=rbind(metricSPY,metricC)
util_plot2df(value~time,metric,title="Return")
}}
\keyword{PortfolioEffectHFT}
%\concept{plot market data, plot}
\keyword{util_plot2df}
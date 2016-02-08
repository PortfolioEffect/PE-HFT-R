\name{util_colorScheme}
\alias{util_colorScheme}
\title{Color scheme for charts}
\usage{util_colorScheme()
}
\value{Constructed ggplot2 discrete color scheme. 
}
\description{Custom color scheme for charts based on ggplot2 discrete scale.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{
data(aapl.data) 
aapl.frame<-data.frame(Data=aapl.data[,2],Time=as.POSIXct(aapl.data[,1]/1000, 
origin = "1970-01-01", tz = "America/New_York"),legend='AAPL')
ggplot() + geom_line(data=aapl.frame, aes(x=Time,y=Data,col=legend))+util_colorScheme()
}}
\keyword{PortfolioEffectHFT}
%\concept{plot market data, plot}
\keyword{util_colorScheme}
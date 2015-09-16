\name{util_plotTheme}
\alias{util_plotTheme}
\title{Plot style settings for PortfolioEffect theme}
\usage{util_plotTheme(base_size = 10,
base_family = "sans", 
horizontal = TRUE, 
dkpanel = FALSE, 
bw = FALSE,
axis.text.size=1.5,
title.size=2, 
has.subtitle = FALSE)
}
\arguments{
  \item{base_size}{Base font size.}
  \item{base_family}{Base font family.}
  \item{horizontal}{Horizontal alignment flag.}
  \item{dkpanel}{dkpanel flag.}
  \item{bw}{Black and white color scheme flag.}
  \item{axis.text.size}{Axis font size.}
  \item{title.size}{Title font size.}
  \item{has.subtitle}{Subtitle flag.}  
}
\value{Void}
\description{Customizable plot style for PortfolioEffect color theme.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
data(aapl.data) 
aapl.frame<-data.frame(Data=aapl.data[,2],Time=as.POSIXct(aapl.data[,1]/1000, 
origin = "1970-01-01", tz = "America/New_York"),Legend='AAPL')
ggplot() + geom_line(data=aapl.frame, aes(x=Time,y=Data,col=Legend))+
util_plotTheme()+util_colorScheme()+util_fillScheme()
}}
\keyword{PortfolioEffect}
\keyword{util_plotTheme}
\name{util_getComputeTime}
\alias{util_getComputeTime}
\title{Remaining compute time}
\usage{util_getComputeTime(time=c("timeMax","timeLeft"))
}
\arguments{
  \item{time}{One of the following option: \cr
  	"timeMax" - maximum available compute time, \cr
  	"timeLeft" - remaining compute time.
  }  
}
\value{Time value in seconds.}
\description{Returns remaining/maximum compute time in seconds. 
Maximum time is limited by client's current subscription plan until. 
Remaining time is reset to maximum time every day at 12am ET. 
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{ 
util_getComputeTime("timeMax")
util_getComputeTime("timeLeft")
}}
\keyword{PortfolioEffectHFT}
%\concept{toolbox tools, trading}
\keyword{util_getComputeTime}
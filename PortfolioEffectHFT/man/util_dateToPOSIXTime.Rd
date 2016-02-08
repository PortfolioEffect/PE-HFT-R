\name{util_dateToPOSIXTime}
\alias{util_dateToPOSIXTime}
\title{Date To POSIX Time}
\usage{util_dateToPOSIXTime(time)
}
\arguments{
  \item{time}{One dimensional vector of time values in "yyyy-MM-dd hh:mm:ss" string format.}  
}
\value{Numerical vector of milliseconds since the beginning of the epoch. 
}
\description{Converts date strings to corresponding timestamps in milliseconds.}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
\dontrun{
time = "2014-11-17 09:30:00"
util_dateToPOSIXTime(time)
}}
\keyword{PortfolioEffectHFT}
%\concept{ market data}
\keyword{util_dateToPOSIXTime}
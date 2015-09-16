\name{util_setCredentials}
\alias{util_setCredentials}
\title{Set Credentials}

\usage{util_setCredentials(username,password,apiKey,hostname="snowfall04.snowfallsystems.com")
}

\arguments{
  \item{username}{User name}
  \item{password}{User password}
  \item{apiKey}{User api key}
  \item{hostname}{Server hostname}  
}
\description{
Saves platform client log-in credentials.
To retrieve your account credentials, please log in to your account.
This function should be called before any other requests to the server are made.
}

\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\seealso{\code{\link{portfolio_create}} }
\examples{
#util_setCredentials("User Name", "User Password ", "User apiKey")
}
\keyword{PortfolioEffect}
\keyword{util_setCredentials}
\name{portfolio-class}
\docType{class}
\alias{portfolio-class}
\alias{plot,portfolio,missing-method}
\alias{portfolio_addPosition,portfolio,character,ANY,ANY,matrix-method}
\alias{portfolio_addPosition,portfolio,character,ANY,ANY,missing-method}
\alias{portfolio_addPosition,portfolio,character,ANY,missing,matrix-method}
\alias{portfolio_addPosition,portfolio,character,ANY,missing,missing-method}
\alias{portfolio_create,portfolio,missing,missing,missing-method}
\alias{show,portfolio-method}

\title{Class \code{"portfolio"}}
\description{
Class for storing portfolio settings.
}
\section{Slots}{
  \describe{
    \item{\code{java}:}{Object of class \code{"jobjRef"} ~~ }
    \item{\code{optimization_info}:}{Object of class \code{"ANY"} ~~ }
  }
}
\section{Methods}{
  \describe{
    \item{plot}{\code{signature(x = "portfolio", y = "missing")}: ... }
    \item{portfolio_addPosition}{\code{signature(portfolio = "portfolio",
     symbol = "character", quantity = "ANY", time = "ANY", priceData = "matrix")}: ... }
    \item{portfolio_addPosition}{\code{signature(portfolio = "portfolio",
     symbol = "character", quantity = "ANY", time = "ANY", priceData = "missing")}: ... }
    \item{portfolio_addPosition}{\code{signature(portfolio = "portfolio",
     symbol = "character", quantity = "ANY", time = "missing", priceData = "matrix")}: ... }
    \item{portfolio_addPosition}{\code{signature(portfolio = "portfolio",
     symbol = "character", quantity = "ANY", time = "missing", priceData = "missing")}: ... }
    \item{show}{\code{signature(object = "portfolio")}: ... }
	 }
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
showClass("portfolio")
}
\keyword{PortfolioEffectHFT}
\keyword{classes}

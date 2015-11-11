\name{optimizer-class}
\docType{class}
\alias{optimizer-class}
\title{Class \code{"optimizer"}}
\description{
Class for storing optimization goals and constraints.
}
\section{Slots}{
  \describe{
    \item{\code{java}:}{Object of class \code{"jobjRef"} ~~ }
    \item{\code{portfolio}:}{Object of class \code{"jobjRef"} ~~ }
    \item{\code{errorInDecimalPoints}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{globalOptimumProbability}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{constraintMerticFunctions}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{constraintTypeFunctions}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{functions}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{constraintConfidenceIntervalFunctions}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{constraintSymbolsFunctions}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{constraintMerticSimple}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{constraintTypeSimple}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{constraintValueSimple}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{constraintConfidenceInterval}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{constraintSymbols}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{portfolioValue}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{goal}:}{Object of class \code{"character"} ~~ }
    \item{\code{direction}:}{Object of class \code{"character"} ~~ }
    \item{\code{confidenceInterval}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{forecastedValueLists}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{forecastExponentialWindow}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{forecastType}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{forecastTimeStep}:}{Object of class \code{"ANY"} ~~ }
    \item{\code{forecastPortfolioWindow}:}{Object of class \code{"ANY"} ~~ }
  }
}

\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
showClass("optimizer")
}
\keyword{PortfolioEffectHFT}
%\concept{high frequency, market data, optimization, realtime analytics, risk, risk management, trading, trading strategies}
\keyword{classes}

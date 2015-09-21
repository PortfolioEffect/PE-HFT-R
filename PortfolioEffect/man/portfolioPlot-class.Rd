\name{portfolioPlot-class}
\docType{class}
\alias{portfolioPlot-class}
\alias{+,portfolioPlot,portfolioPlot-method}
\alias{plot,portfolioPlot,missing-method}
\alias{show,portfolioPlot-method}

\title{Class \code{"portfolioPlot"}}
\description{
Class for storing chart settings for portfolio metrics.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("portfolioPlot", ...)}.
%%  ~~ describe objects here ~~ 
}
\section{Slots}{
  \describe{
    \item{\code{data}:}{Object of class \code{"data.frame"} ~~ }
    \item{\code{start.data}:}{Object of class \code{"data.frame"} ~~ }
    \item{\code{option}:}{Object of class \code{"list"} ~~ }
    \item{\code{bw}:}{Object of class \code{"logical"} ~~ }
    \item{\code{breaks}:}{Object of class \code{"numeric"} ~~ }
    \item{\code{labels}:}{Object of class \code{"character"} ~~ }
  }
}
\section{Methods}{
  \describe{
    \item{+}{\code{signature(e1 = "portfolioPlot", e2 = "portfolioPlot")}: ... }
    \item{plot}{\code{signature(x = "portfolioPlot", y = "missing")}: ... }
    \item{show}{\code{signature(object = "portfolioPlot")}: ... }
	 }
}
\author{Kostin Andrey <andrey.kostin@portfolioeffect.com>}
\examples{
showClass("portfolioPlot")
}
\keyword{classes}

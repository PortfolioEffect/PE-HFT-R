.onLoad <- function(libname, pkgname) {
	.jpackage(pkgname, lib.loc = libname, morePaths = "inst/java/portfolioeffect-quant-client-1.0-allinone.jar")
	infoMessage('INFO_WELCOME')
}


.onLoad <- function(libname, pkgname) {
	.jpackage(pkgname, lib.loc = libname, morePaths = "inst/java/ice9-quant-client-1.0-allinone.jar")
	infoMessage('INFO_WELCOME')
}




## DLL bug workaround for making man files
## See:
## https://github.com/klutometis/roxygen/issues/771
## and
## https://github.com/klutometis/roxygen/issues/833 
pkgbuild::compile_dll()
devtools::document()

## Build PDF manual
devtools::build_manual()

## Install locally
devtools::install()

## Make .tar.gz source file
devtools::build()
  

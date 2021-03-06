% File src/library/base/man/warnings.Rd
% Part of the R package, http://www.R-project.org
% Copyright 1995-2007 R Core Development Team
% Distributed under GPL 2 or later

\name{warnings}
\alias{warnings}
\alias{last.warning}
\alias{print.warnings}
\title{Print Warning Messages}
\description{
  \code{warnings} and its \code{print} method print the
  variable \code{last.warning} in a pleasing form.
}
\usage{
warnings(\dots)
}
\arguments{
  \item{\dots}{arguments to be passed to \code{\link{cat}}.}
}
\references{
  Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988)
  \emph{The New S Language}.
  Wadsworth & Brooks/Cole.
}
\details{
  See the description of \code{\link{options}("warn")} for the
  circumstances under which there is a \code{last.warning} object and
  \code{warnings()} is used.  In essence this is if \code{options(warn =
    0)} and \code{warning} has been called at least once.

  It is possible that \code{last.warning} refers to the last recorded
  warning and not to the last warning, for example if \code{options(warn)} has
  been changed or if a catastrophic error occurred. 
}
\section{Warning}{
  It is undocumented where \code{last.warning} is stored nor that it is
  visible, and this is subject to change.  Prior to \R 2.4.0 it was
  stored in the workspace, but no longer.
}
\seealso{
  \code{\link{warning}}.
}
\examples{
## NB this example is intended to be pasted in,
##    rather than run by example()
ow <- options("warn")
for(w in -1:1) {
   options(warn = w); cat("\n warn =",w,"\n")
   for(i in 1:3) { cat(i,"..\n"); m <- matrix(1:7, 3,4) }
}
warnings()
options(ow) # reset
}
\keyword{programming}
\keyword{error}

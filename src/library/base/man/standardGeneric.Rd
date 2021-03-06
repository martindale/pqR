% File src/library/base/man/standardGeneric.Rd
% Part of the R package, http://www.R-project.org
% Copyright 1995-2007 R Core Development Team
% Distributed under GPL 2 or later

\name{standardGeneric}
\alias{standardGeneric}
\title{Formal Method System -- Dispatching S4 Methods}
% and other Placeholders
\description{
  The function \code{standardGeneric} initiates dispatch of S4
  methods: see the references and the documentation of the
  \pkg{methods} package.  Usually, calls to this function are
  generated automatically and not explicitly by the programmer.
}
  % was "and do not need to be called directly in any case."
  % but standardGeneric() should be "called directly" , right?
\usage{
standardGeneric(f, fdef)
}
\details{
  \code{standardGeneric} dispatches the method defined for a generic
  function named \code{f}, using the actual arguments in the frame from which
  it is called.

The argument \code{fdef} is inserted (automatically) when dispatching
methods for a primitive function.  If present, it must always be the function
definition for the corresponding generic.  Don't insert this argument
by hand, as there is no validity checking and miss-specifying the
function definition will cause certain failure.

  For more, use the \pkg{methods} package, and see the documentation in
  \code{\link{GenericFunctions}}.
}
\author{ John Chambers }
\references{
 Chambers, John M. (2008)
 \emph{Software for Data Analysis: Programming with R}
  Springer.  (For the R version.)

 Chambers, John M. (1998)
 \emph{Programming with Data}
 Springer (For the original S4 version.)
}
\keyword{programming}
\keyword{internal}

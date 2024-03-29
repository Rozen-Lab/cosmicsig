% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_etiology.R
\name{get_etiology}
\alias{get_etiology}
\title{Get the proposed etiology of mutational signatures.}
\usage{
get_etiology(mutation_type, sig_id)
}
\arguments{
\item{mutation_type}{Character string, one of "SBS96", "SBS192", "DBS78",
"ID".}

\item{sig_id}{Character vector with signature ids, e.g. \code{c("SBS3",
"SBS5")}.}
}
\value{
A character vector of the same length as \code{sig_id},
each element of which is the etiology of the
corresponding signature, if available, or else the empty string.
}
\description{
Return the known or hypothesized causes of mutational signatures.
The level of evidence supporting the proposed etiologies varies.
In addition, some proposed etiologies are more akin to associations than
specific, mechanistic causes.
}
\section{Note}{

The etiology information is not versioned at the COSMIC website.
}

\examples{
get_etiology(mutation_type = "ID", sig_id = c("ID1", "foo", "ID3"))
}
\seealso{
\code{\link{get_etiology}}
}

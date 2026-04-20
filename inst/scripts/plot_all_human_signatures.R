#!/usr/bin/env Rscript
# Plot all human SBS, DBS, and ID signatures from a given COSMIC version
# to a single PDF in /tmp and open it. Uses mSigPlot::plot_guess().
#
# Usage:
#   Rscript inst/scripts/plot_all_human_signatures.R [version]
# e.g.
#   Rscript inst/scripts/plot_all_human_signatures.R v3.5
#
# This is a manual test script, not part of the package's test suite.

suppressPackageStartupMessages({
  library(argparser)
  library(cosmicsig)
  library(mSigPlot)
  library(qpdf)
})

p <- arg_parser("Plot all human COSMIC signatures to a PDF")
p <- add_argument(p, "--version", help = "COSMIC version (e.g. v3.5)",
                  default = "v3.5")
p <- add_argument(p, "--genome", help = "Human genome build: GRCh37 or GRCh38",
                  default = "GRCh37")
args <- parse_args(p)

obj_name <- paste0("COSMIC_", args$version)
env <- new.env()
tryCatch(
  utils::data(list = obj_name, package = "cosmicsig", envir = env),
  warning = function(w) stop("Unknown COSMIC version: ", args$version)
)
cosmic <- env[[obj_name]]

sigs <- cosmic$signature[[args$genome]]
if (is.null(sigs)) {
  stop("Genome ", args$genome, " not available for ", args$version)
}

# GRCh37 has SBS96, DBS78, and ID; GRCh38 has only SBS96 and DBS78.
types <- intersect(c("SBS96", "DBS78", "ID"), names(sigs))

tmp_pdfs <- character()
for (type in types) {
  out <- tempfile(pattern = paste0(type, "_"), fileext = ".pdf")
  message("Plotting ", type, " (", ncol(sigs[[type]]), " signatures) -> ", out)
  mSigPlot::plot_guess_pdf(catalog = sigs[[type]], filename = out)
  tmp_pdfs <- c(tmp_pdfs, out)
}

final_pdf <- file.path(
  "/tmp",
  sprintf("cosmic_%s_%s_all_sigs.pdf", args$version, args$genome)
)
qpdf::pdf_combine(input = tmp_pdfs, output = final_pdf)
message("Wrote combined PDF: ", final_pdf)

system2("xdg-open", final_pdf, stdout = NULL, stderr = NULL, wait = FALSE)

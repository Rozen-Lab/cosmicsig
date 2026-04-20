## Submission

This is a feature release. In this version:

* Added new exported package data variable `COSMIC_v3.5`, containing
  the mutational signature profiles from COSMIC v3.5 (November 2025).
  The top-level `signature` and `etiology` variables have been updated
  to mirror the v3.5 release.

* Removed the `ICAMS` package from documentation dependencies.
  `cosmicsig` no longer depends on, imports, or suggests `ICAMS`.

* Marked the `etiology` data object and the `get_etiology()` function
  as deprecated in their documentation. The etiology information is
  not versioned at COSMIC and is no longer being updated in this
  package; it may be incomplete for signatures added in recent COSMIC
  releases. Both remain exported for backwards compatibility.

## Test environments

* Local Ubuntu Linux: R 4.x
* GitHub Actions R-CMD-check workflow (ubuntu-latest, macOS-latest,
  windows-latest; R release and devel)

## R CMD check results

`R CMD check --as-cran` produced no ERRORs or WARNINGs.

## Downstream dependencies

There are currently no downstream dependencies for this package on
CRAN.

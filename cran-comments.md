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

Checked on GitHub Actions across a five-entry matrix:

* macos-latest, R release
* windows-latest, R release
* ubuntu-latest, R devel
* ubuntu-latest, R release
* ubuntu-latest, R oldrel-1

All jobs run `R CMD check --as-cran` (via
`r-lib/actions/check-r-package@v2` with `--no-manual --as-cran`).

## R CMD check results

All five CI jobs pass with 0 ERRORs and 0 WARNINGs. 0 NOTEs after
adding the maintainer-only `CLAUDE.md` file to `.Rbuildignore`.

## Downstream dependencies

There are currently no downstream dependencies for this package on
CRAN.

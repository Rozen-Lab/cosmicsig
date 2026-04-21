## Submission

This is a resubmission of 1.3.0. The 1.3.0 submission was declined
because the Alexandrov et al. 2020 reference on the package help page
used

    \href{https://doi.org/10.1038/s41586-020-1943-3}{doi:10.1038/s41586-020-1943-3}

rather than the `\doi{}` Rd macro. In this version (1.3.1) the
reference uses `\doi{10.1038/s41586-020-1943-3}` as requested.

The substantive changes from 1.2.0, already described in the 1.3.0
submission, are unchanged:

* Added new exported package data variable `COSMIC_v3.5`, containing
  the mutational signature profiles from COSMIC v3.5 (November 2025).
  The top-level `signature` and `etiology` variables have been updated
  to mirror the v3.5 release.

* Removed the `ICAMS` package from documentation dependencies.
  `cosmicsig` no longer depends on, imports, or suggests `ICAMS`.
  This change was required by CRAN since `ICAMS` is currently
  not on CRAN.

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

0 ERRORs, 0 WARNINGs, 0 NOTEs across all five environments listed
above, and 0 ERRORs / 0 WARNINGs / 0 NOTEs on a local
`R CMD check --as-cran` run on the built tarball (with the CRAN
incoming-feasibility check enabled).

## Downstream dependencies

There are currently no downstream dependencies for this package on
CRAN.

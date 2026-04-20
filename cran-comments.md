## Submission

This is a feature release. In this version:

* Added new exported package data variable `COSMIC_v3.5`, containing
  the mutational signature profiles from COSMIC v3.5 (November 2025).
  The top-level `signature` and `etiology` variables have been updated
  to mirror the v3.5 release.

* Removed the `ICAMS` package from documentation dependencies.
  `cosmicsig` no longer depends on, imports, or suggests `ICAMS`.
  This change was required by CRAN since `ICAMS` is currenlty
  not in CRAN.

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

0 ERRORs, 0 WARNINGs across all five environments listed above.

On CI the jobs run with `NOT_CRAN=true` (the r-lib/actions default),
which skips the "CRAN incoming feasibility" check, so CI reports
`Status: OK`. A local `R CMD check --as-cran` run on the built tarball
(with the incoming check enabled) reports one informational NOTE:

```
Found the following URLs which should use \doi (with the DOI name only):
  File 'cosmicsig.Rd':
    https://doi.org/10.1038/s41586-020-1943-3
```

The DOI reference is deliberately written as
`\href{https://doi.org/10.1038/s41586-020-1943-3}{doi:10.1038/s41586-020-1943-3}`
rather than the `\doi{...}` macro. The `\doi{}` macro expands to an
`\Sexpr[results=rd]{tools:::Rd_expr_doi(...)}` call that is not
processed by all static HTML renderers (users reported seeing the
literal Sexpr in online HTML snapshots of the help page). The
`\href{}{}` form renders correctly as a hyperlink to the DOI in both
the PDF and HTML help.

## Downstream dependencies

There are currently no downstream dependencies for this package on
CRAN.

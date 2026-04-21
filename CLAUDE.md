# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working
with code in this repository.

## What this package is

`cosmicsig` is primarily a **data package** that ships
mutational-signature profiles from
[COSMIC](https://cancer.sanger.ac.uk/signatures/). The R code is thin: a
package help page, roxygen stubs that document each exported dataset,
and a handful of small helpers (`get_etiology`, `possible_artifacts`,
`rare_signatures`, `SBS96_ID_to_SBS192_ID`). Most maintenance work is
about regenerating the `.rda` files under `data/` when a new COSMIC
release comes out, not about editing R source.

## Data model

Two “rolling-latest” package variables plus one frozen snapshot per
release:

- `signature` — nested list `[[genome]][[mutation_type]]` where `genome`
  ∈ {`GRCh37`, `GRCh38`, `mm9`, `mm10`, `rn6`} and `mutation_type` ∈
  {`SBS96`, `DBS78`, `ID`}. Each leaf is a matrix (rows = mutation
  classes, cols = signatures). `ID` is only defined for `GRCh37` because
  indel classes don’t depend on genome composition.
- `etiology` — parallel nested list of character vectors describing each
  signature’s known or hypothesized cause.
- `COSMIC_v3.0`, `COSMIC_v3.1`, …, `COSMIC_v3.5` — frozen per-release
  snapshots, each a list `$signature` + `$etiology` with the same
  structure as above.

`signature` and `etiology` always mirror the **newest** release. When a
new COSMIC version lands, both the new `COSMIC_v<X>.rda` and the
top-level `signature.rda`/`etiology.rda` need to be regenerated.

**Etiology is deprecated.** The `etiology` data and
[`get_etiology()`](https://rozen-lab.github.io/cosmicsig/reference/get_etiology.md)
helper are no longer being updated — they are not versioned at COSMIC
and may be incomplete for newer signatures. Leave them in place for
backwards compatibility, but don’t invest effort extending them; direct
users to <https://cancer.sanger.ac.uk/signatures/> instead.

## Adding a new COSMIC release

Each `data-raw/COSMIC_v<X>/code/` directory is a self-contained build
pipeline for one release. For v3.5 the scripts are:

- `download_COSMIC_v3.5_sigs_from_website.R` — pulls raw TSVs from
  COSMIC
- `generate_COSMIC_v3.5_genome_sigs.R` — builds the per-genome catalog
  matrices
- `generate_COSMIC_v3.5_etiologies.R` — builds the etiology list
- `generate_COSMIC_v3.5_data.R` — **entry point**; sources the two above
  and calls `usethis::use_data(COSMIC_v3.5, overwrite = TRUE)`
- `check_version_difference.R` — diffs against the previous release

Run the entry-point script from the **package root** (scripts use
relative paths like `data-raw/COSMIC_v3.5/...`):

``` sh
Rscript data-raw/COSMIC_v3.5/code/generate_COSMIC_v3.5_data.R
```

To cut a new release, copy the `v<prev>` directory, update URLs/paths,
regenerate `.rda`s, also regenerate top-level `signature.rda` /
`etiology.rda` to point at the new release, add an `R/COSMIC_v<X>.R`
roxygen stub, and update `DESCRIPTION` + `NEWS.md`.

## `data()` reads *installed* data, not source

Because `LazyData: true` lives in the installed package,
[`data()`](https://rdrr.io/r/utils/data.html) and
[`cosmicsig::COSMIC_v3.5`](https://rozen-lab.github.io/cosmicsig/reference/COSMIC_v3.5.md)
see whatever was last **installed**, not what is on disk under `data/`.
After regenerating `.rda` files, reinstall before testing:

``` r
pak::pak("local::.")
```

`devtools::load_all(".")` is the alternative — it makes the source-tree
data visible without installing.

## Common commands

``` sh
# run the test suite
Rscript -e 'devtools::test()'

# run a single test file
Rscript -e 'testthat::test_file("tests/testthat/test_get_etiology.R")'

# full CRAN-style check
Rscript -e 'devtools::check(cran = TRUE)'

# rebuild roxygen docs + NAMESPACE
Rscript -e 'devtools::document()'

# rebuild README.md from README.Rmd
Rscript -e 'devtools::build_readme()'
```

There is no separate lint step; `R CMD check --as-cran` is the gate.

## Manual visual-regression script

`inst/scripts/plot_all_human_signatures.R` renders every human SBS96,
DBS78, and ID signature from a given COSMIC version (default `v3.5`,
`GRCh37`) to a single combined PDF in `/tmp` and opens it with
`xdg-open`. It uses `mSigPlot::plot_guess_pdf()` and
`qpdf::pdf_combine()`. This is a manual smoke test, **not** a testthat
test, so it is not exercised by `devtools::test()` or CRAN checks.

Run after updating signature data or bumping `mSigPlot` (reinstall
first, per the [`data()`](https://rdrr.io/r/utils/data.html) note
above):

``` sh
Rscript inst/scripts/plot_all_human_signatures.R --version v3.5 --genome GRCh37
```

`inst/scripts/reference_plot_all_human_signatures_v3.5.pdf` is the
known-good output for `--version v3.5 --genome GRCh37`. Diff new runs
against it visually to catch regressions. Regenerate and commit this
file **only** when a signature-data or plotting change is intentional.

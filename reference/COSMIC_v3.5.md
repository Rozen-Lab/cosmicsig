# Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In Cancer (v3.5 - November 2025)

Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations
In Cancer (v3.5 - November 2025)

## Usage

``` r
COSMIC_v3.5
```

## Format

A list with two elements, `signature` and `etiology`.

- `signature` is a list with the same structure as
  [`signature`](https://rozen-lab.github.io/cosmicsig/reference/signature.md).

- `etiology` is a list with the same structure as
  [`etiology`](https://rozen-lab.github.io/cosmicsig/reference/etiology.md).
  The etiology information is deprecated and is no longer being updated.
  It is not versioned at the COSMIC website and may not reflect
  signatures added in recent COSMIC releases. For authoritative,
  up-to-date etiologies consult
  <https://cancer.sanger.ac.uk/signatures/> directly.

## Source

<https://cancer.sanger.ac.uk/signatures/>.

## Remark

The signatures are all genome signatures. See
<https://cancer.sanger.ac.uk/signatures/>.

## Examples

``` r
sbs96_sig_v3.5 <- COSMIC_v3.5$signature$GRCh37$SBS96
```

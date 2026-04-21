# Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In Cancer (v3.4 - October 2023)

Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations
In Cancer (v3.4 - October 2023)

## Usage

``` r
COSMIC_v3.4
```

## Format

A list with two elements, `signature` and `etiology`.

- `signature` is a list with the same structure as
  [`signature`](https://rozen-lab.github.io/cosmicsig/reference/signature.md).

- `etiology` is a list with the same structure as
  [`etiology`](https://rozen-lab.github.io/cosmicsig/reference/etiology.md).

## Source

<https://cancer.sanger.ac.uk/signatures/>.

## Remark

The signatures are all genome signatures. See
<https://cancer.sanger.ac.uk/signatures/>.

## Examples

``` r
sbs96_sig_v3.4 <- COSMIC_v3.4$signature$GRCh37$SBS96
```

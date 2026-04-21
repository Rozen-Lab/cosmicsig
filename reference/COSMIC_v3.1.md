# Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In Cancer (v3.1 - June 2020)

Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations
In Cancer (v3.1 - June 2020)

## Usage

``` r
COSMIC_v3.1
```

## Format

A list with one element `signature`, with the same structure as
[`signature`](https://rozen-lab.github.io/cosmicsig/reference/signature.md).

## Source

<https://cancer.sanger.ac.uk/signatures/>.

## Remark

The signatures are all genome signatures. See
<https://cancer.sanger.ac.uk/signatures/>.

## Examples

``` r
sbs96_sig_v3.1 <- COSMIC_v3.1$signature$GRCh37$SBS96
```

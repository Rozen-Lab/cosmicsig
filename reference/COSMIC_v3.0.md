# Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In Cancer (v3.0 - May 2019)

Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations
In Cancer (v3.0 - May 2019)

## Usage

``` r
COSMIC_v3.0
```

## Format

A list with one element `signature`, with the same structure as
[`signature`](https://rozen-lab.github.io/cosmicsig/reference/signature.md),
except that sub-element GRCh37 does contain `SBS192`.

## Source

<https://cancer.sanger.ac.uk/signatures/>.

## Remark

The signatures are all genome signatures. See
<https://cancer.sanger.ac.uk/signatures/>.

## Examples

``` r
sbs96_sig_v3.0 <- COSMIC_v3.0$signature$GRCh37$SBS96
```

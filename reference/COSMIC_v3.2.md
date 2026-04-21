# Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In Cancer (v3.2 - March 2021)

Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations
In Cancer (v3.2 - March 2021)

## Usage

``` r
COSMIC_v3.2
```

## Format

A list with two elements, `signature` and `etiology`.

- `signature` is a list with the same structure as
  [`signature`](https://rozen-lab.github.io/cosmicsig/reference/signature.md).

- `etiology` is a list with the same structure as
  [`etiology`](https://rozen-lab.github.io/cosmicsig/reference/etiology.md).

## Source

<https://cancer.sanger.ac.uk/signatures/>.

## Note

SBS10c, SBS10d, SBS91, SBS92, SBS93, SBS94 (total 6) new SBS signatures
were added in COSMIC v3.2. See the news from COSMIC release for more
details
<https://cosmic-blog.sanger.ac.uk/cosmic-mutational-signatures-release-v3-2/>

## Remark

The signatures are all genome signatures. See
<https://cancer.sanger.ac.uk/signatures/>.

## Examples

``` r
sbs96_sig_v3.2 <- COSMIC_v3.2$signature$GRCh37$SBS96
```

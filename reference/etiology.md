# List of mutational signatures' proposed etiology summarized from COSMIC, Catalogue Of Somatic Mutations In Cancer (v3.5 - November 2025)

List of mutational signatures' proposed etiology summarized from COSMIC,
Catalogue Of Somatic Mutations In Cancer (v3.5 - November 2025)

## Usage

``` r
etiology
```

## Format

A list with the elements:

- SBS96

- DBS78

- ID

Each element is a single-column matrix with rownames being the signature
IDs and values being a short string describing the proposed etiology.

In general use
[`get_etiology`](https://rozen-lab.github.io/cosmicsig/reference/get_etiology.md),
which handles new signatures do not have an element in `etiology`.

## Source

<https://cancer.sanger.ac.uk/signatures/>.

## Deprecation note

The etiology information is **deprecated** and is no longer being
updated. It is not versioned at the COSMIC website and may not reflect
signatures added in recent COSMIC releases. For authoritative,
up-to-date etiologies consult <https://cancer.sanger.ac.uk/signatures/>
directly.

## Examples

``` r
sbs96_etiology <- etiology$SBS96
```

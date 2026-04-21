# Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations In Cancer (v3.5 - November 2025)

Mutational signatures data from COSMIC, Catalogue Of Somatic Mutations
In Cancer (v3.5 - November 2025)

## Usage

``` r
signature
```

## Format

A list with the following elements:

- GRCh37: Homo sapiens (human) genome assembly GRCh37.

- GRCh38: Homo sapiens (human) genome assembly GRCh38.

- mm9: Mus musculus (house mouse) genome assembly mm9.

- mm10: Mus musculus (house mouse) genome assembly mm10.

- rn6: Rattus norvegicus (Norway rat) genome assembly rn6.

Each element contains the sub elements:

- SBS96: Strand-agnostic single-base substitutions in trinucleotide
  context.

- DBS78: Strand-agnostic doublet-base substitutions.

Element GRCh37 contains the additional sub elements:

- ID: Strand-agnostic indels (short insertions and deletions).

## Source

<https://cancer.sanger.ac.uk/signatures/>.

## Remark

The signatures are all genome signatures. See
<https://cancer.sanger.ac.uk/signatures/>.

## Examples

``` r
sbs96_sig <- signature$GRCh37$SBS96
```

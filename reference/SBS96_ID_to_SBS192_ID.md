# Translate SBS96 signature IDs to SBS192 signature IDs by adding "-E" if necessary

"-E" added to the name of a transcriptional strand bias signature
indicates that it was extracted only from exome sequencing data, and
thus reflects transcriptional strand bias in the exome rather than in
the entire transcript, including introns.

## Usage

``` r
SBS96_ID_to_SBS192_ID(sig_ids)
```

## Arguments

- sig_ids:

  Character vector of SBS96 signature IDs.

## Value

Character vector of corresponding SBS192 signature IDs; some have "-E"
(for exome) post-pended.

## Examples

``` r
sbs96_ids <- c("SBS1", "SBS23", "SBS25")
sbs192_ids <- SBS96_ID_to_SBS192_ID(sbs96_ids)
```

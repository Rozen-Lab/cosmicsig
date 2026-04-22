# Get the proposed etiology of mutational signatures.

**Deprecated.** The etiology information is no longer being updated. It
is not versioned at the COSMIC website and may not reflect signatures
added in recent COSMIC releases. For authoritative, up-to-date
etiologies consult <https://cancer.sanger.ac.uk/signatures/> directly.

Return the known or hypothesized causes of mutational signatures. The
level of evidence supporting the proposed etiologies varies. In
addition, some proposed etiologies are more akin to associations than
specific, mechanistic causes.

## Usage

``` r
get_etiology(mutation_type, sig_id)
```

## Arguments

- mutation_type:

  Character string, one of "SBS96", "SBS192", "DBS78", "ID".

- sig_id:

  Character vector with signature ids, e.g. `c("SBS3", "SBS5")`.

## Value

A character vector of the same length as `sig_id`, each element of which
is the etiology of the corresponding signature, if available, or else
the empty string.

## See also

`get_etiology`

## Examples

``` r
get_etiology(mutation_type = "ID", sig_id = c("ID1", "foo", "ID3"))
#>                                                   ID1 
#> "Replication slippage; defective DNA mismatch repair" 
#>                                                   foo 
#>                                                    "" 
#>                                                   ID3 
#>                                     "Tobacco smoking" 
```

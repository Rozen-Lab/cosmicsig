# cosmicsig: A package of mutational signatures from COSMIC (Catalogue Of Somatic Mutations In Cancer) <https://cancer.sanger.ac.uk/signatures/>.

For a general introduction to mutational signatures and the techniques
used to discover them, see Alexandrov et al., 2020
[doi:10.1038/s41586-020-1943-3](https://doi.org/10.1038/s41586-020-1943-3)
.

## Source

<https://cancer.sanger.ac.uk/signatures/>.

## Details

This is a data package with 2 main package variables:
[`signature`](https://rozen-lab.github.io/cosmicsig/reference/signature.md)
and
[`etiology`](https://rozen-lab.github.io/cosmicsig/reference/etiology.md).

The
[`signature`](https://rozen-lab.github.io/cosmicsig/reference/signature.md)
variable contains the latest mutational signature profiles released on
<https://cancer.sanger.ac.uk/signatures/> for 3 mutation types:

- SBS (single base substitutions in the context of preceding and
  following bases, called SBS96 in this package)

- DBS (doublet base substitutions, called DBS78 in this package)

- ID (small insertions and deletions)

The package variable
[`etiology`](https://rozen-lab.github.io/cosmicsig/reference/etiology.md)
contains information on known or hypothesized causes of mutational
signatures. In general, it is better to use
[`get_etiology`](https://rozen-lab.github.io/cosmicsig/reference/get_etiology.md).

**Deprecation note:** the etiology information is no longer being
updated and may be incomplete for recent COSMIC releases. Consult
<https://cancer.sanger.ac.uk/signatures/> for current etiologies.

Earlier releases are available in the variables COSMIC\_*version*, e.g.
[`COSMIC_v3.4`](https://rozen-lab.github.io/cosmicsig/reference/COSMIC_v3.4.md).

The profiles of SBSs signatures depend on the frequencies of
trinucleotides in a genome and profiles of DBS signatures depend on the
frequencies of dinucleotides in a genome. Therefore COSMIC and this
package provide slightly different signatures for different reference
genomes. COSMIC and this package offer versions of SBS and DBS
signatures for human GRCh37 (also known as hg19) and GRCh38, and for
mouse and rat. ID signatures do not take into consideration differing
nucleotide composition between reference genomes because relating this
to the ID mutational categories would be extremely complicated.

Some signatures are due to experimental or laboratory artifacts.
Function
[`possible_artifacts`](https://rozen-lab.github.io/cosmicsig/reference/possible_artifacts.md)
returns these.

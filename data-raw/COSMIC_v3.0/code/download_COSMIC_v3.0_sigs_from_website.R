# Source this file from cosmicsig package root
cat(getwd(), "\n")

# Download COSMIC v3.0 SBS96 signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/430/COSMIC_v3_SBS_GRCh37.txt",
              destfile = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_SBS_GRCh37.txt",
              quiet = TRUE)

# Download COSMIC v3.0 DBS78 signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/424/COSMIC_v3_DBS_GRCh37.txt",
              destfile = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_DBS_GRCh37.txt",
              quiet = TRUE)

# Download COSMIC v3.0 ID signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/429/COSMIC_v3_ID_GRCh37.txt",
              destfile = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_ID_GRCh37.txt",
              quiet = TRUE)


# COSMIC v3.0 SBS192 signatures were from the paper
# Alexandrov, L.B., Kim, J., Haradhvala, N.J. et al.
# The repertoire of mutational signatures in human cancer.
# Nature 578, 94-101 (2020). \doi{10.1038/s41586-020-1943-3}
# and then uploaded to COSMIC website.
#
# As the original URL from COSMIC(v3.0) website can not be found, we download
# SBS192 signatures (COSMIC v3.0) from ICGC Data Portal instead (which keeps a
# copy of the signatures published in the paper mentioned above)
download.file(url = "https://dcc.icgc.org/api/v1/download?fn=/PCAWG/mutational_signatures/Signatures/SP_Signatures/SigProfiler_reference_signatures/Sigprofiler_Transcriptional_Strand_Bias_Signatures/sigProfiler_TSB_signatures.csv
",
              destfile = "./data-raw/COSMIC_v3.0/data/sigProfiler_TSB_signatures.csv",
              quiet = TRUE)

# Source this file from cosmicsig package root
cat(getwd(), "\n")

# Generate COSMIC v3.0 genome signatures
library(ICAMS)

# Generate SBS96 signatures
SBS96.sigs.GRCh37 <-
  ICAMS::ReadCatalog(file = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_SBS_GRCh38.txt",
                     ref.genome = "GRCh38",
                     catalog.type = "counts.signature",
                     region = "genome")
attr(SBS96.sigs.GRCh37, "ref.genome") <- NULL

# Generate DBS78 signatures
DBS78.sigs.GRCh37 <-
  ICAMS::ReadCatalog(file = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_DBS_GRCh38.txt",
                     ref.genome = "GRCh38",
                     catalog.type = "counts.signature",
                     region = "genome")
attr(DBS78.sigs.GRCh37, "ref.genome") <- NULL

# Generate ID signatures
ID.sigs.GRCh37 <-
  ICAMS::ReadCatalog(file = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_ID_GRCh37.txt",
                     ref.genome = "GRCh37",
                     catalog.type = "counts.signature",
                     region = "genome")
attr(ID.sigs.GRCh37, "ref.genome") <- NULL

# Put all the signatures inside a list
COSMIC_v3.0 <- list()

COSMIC_v3.0$signature <- list(SBS96 = SBS96.sigs.GRCh37,
                              DBS78 = DBS78.sigs.GRCh37,
                              ID = ID.sigs.GRCh37)

usethis::use_data(COSMIC_v3.0, overwrite = TRUE)
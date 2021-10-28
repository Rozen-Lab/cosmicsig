# Source this file from cosmicsig package root
cat(getwd(), "\n")

# Generate COSMIC v3.0 genome signatures
library(ICAMS)

release <- "3"
genomes <- c("GRCh37", "GRCh38", "mm9", "mm10", "rn6")

folder_prefix <- paste0("./data-raw/COSMIC_v", "3.0", "/data/")
folder_paths <- paste0(folder_prefix, genomes)

COSMIC_v3.0 <- list()

# Generate SBS96 signatures
for (i in 1:length(genomes)) {
  SBS_sig_filename <- paste0("COSMIC_v", release, "_SBS_", genomes[i], ".txt")
  SBS_sig_filepath <- file.path(folder_paths[i], SBS_sig_filename)
  if (genomes[i] %in% c("GRCh37", "GRCh38", "mm10")) {
    ref_genome <- genomes[i]
  } else {
    # ICAMS cannot recognize ref.genome string "mm9" or "rn6"
    # Set it to NULL to avoid error
    ref_genome <- NULL
  }
  SBS96_sig <- ICAMS::ReadCatalog(
    file = SBS_sig_filepath,
    ref.genome = ref_genome,
    catalog.type = "counts.signature",
    region = "genome"
  )

  # Set the attribute "ref.genome" to NULL because this BSgenome class object
  # can cause error when transferring between computers
  attr(SBS96_sig, "ref.genome") <- NULL
  COSMIC_v3.0$signature[[genomes[i]]]$SBS96 <- SBS96_sig
}

# Generate DBS78 signatures
for (i in 1:length(genomes)) {
  DBS_sig_filename <- paste0("COSMIC_v", release, "_DBS_", genomes[i], ".txt")
  DBS_sig_filepath <- file.path(folder_paths[i], DBS_sig_filename)
  if (genomes[i] %in% c("GRCh37", "GRCh38", "mm10")) {
    ref_genome <- genomes[i]
  } else {
    # ICAMS cannot recognize ref.genome string "mm9" or "rn6"
    # Set it to NULL to avoid error
    ref_genome <- NULL
  }
  DBS78_sig <- ICAMS::ReadCatalog(
    file = DBS_sig_filepath,
    ref.genome = ref_genome,
    catalog.type = "counts.signature",
    region = "genome"
  )

  # Set the attribute "ref.genome" to NULL because this BSgenome class object
  # can cause error when transferring between computers
  attr(DBS78_sig, "ref.genome") <- NULL
  COSMIC_v3.0$signature[[genomes[i]]]$DBS78 <- DBS78_sig
}

# Generate ID signatures (only available for GRCh37)
ID_sig_filename <- paste0("COSMIC_v", release, "_ID_", "GRCh37", ".txt")
ID_sig_filepath <- file.path(folder_paths[1], ID_sig_filename)
ID_sig_GRCh37 <- ICAMS::ReadCatalog(
  file = ID_sig_filepath,
  ref.genome = "GRCh37",
  catalog.type = "counts.signature",
  region = "genome"
)
attr(ID_sig_GRCh37, "ref.genome") <- NULL
COSMIC_v3.0$signature[["GRCh37"]]$ID <- ID_sig_GRCh37

usethis::use_data(COSMIC_v3.0, overwrite = TRUE)

# Source this file from cosmicsig package root
cat(getwd(), "\n")

# Generate COSMIC v3.1 genome signatures
library(ICAMS)

release <- "3.1"
genomes <- c("GRCh37", "GRCh38", "mm9", "mm10", "rn6")

folder_prefix <- paste0("./data-raw/COSMIC_v", release, "/data/")
folder_paths <- paste0(folder_prefix, genomes)

COSMIC_v3.1 <- list()

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
  COSMIC_v3.1$signature[[genomes[i]]]$SBS96 <- SBS96_sig
}

# Generate SBS192 signatures (only available for GRCh37)
SBS192_sig_folder <- file.path(folder_paths[1], "SBS192")
SBS192_sig_files <- list.files(path = SBS192_sig_folder, full.names = TRUE)
stopifnot(length(SBS192_sig_files) == 67)
SBS192_sig_list <- lapply(SBS192_sig_files, FUN = function(x) {
  ICAMS::ReadCatalog(
    file = x,
    catalog.type = "counts.signature",
    ref.genome = "GRCh37",
    region = "transcript"
  )
})

# The column names should all have "GRCh37"
stopifnot(all(sapply(SBS192_sig_list, FUN = function(x) {
  grepl("GRCh37", colnames(x))
})))

SBS192_sig_GRCh37 <- do.call(cbind, SBS192_sig_list)
attr(SBS192_sig_GRCh37, "ref.genome") <- NULL

# Do some modifications to the column names
colnames(SBS192_sig_GRCh37) <-
  gsub(pattern = "_GRCh37", replacement = "", x = colnames(SBS192_sig_GRCh37))
colnames(SBS192_sig_GRCh37) <-
  gsub(pattern = ".E", replacement = "-E", x = colnames(SBS192_sig_GRCh37))

# SBS84, SBS85, SBS86, SBS87, SBS89(total 5)
# does not have TSB signature
SBS192_sig_GRCh37_name_order <-
  paste0("SBS", c(
    1:6, paste0(7, letters[1:4]), 8:9, paste0(10, letters[1:2]),
    11:16, paste0(17, letters[1:2]), 18:60, 88, 90
  ))

# "-E" added to the name of a transcriptional strand bias signature indicates
# that it was extracted only from exome sequencing data, and thus reflects
# transcriptional strand bias in the exome rather than in the entire transcript,
# including introns.
need_minus_E <- c(
  "SBS23", "SBS25", "SBS27", "SBS29",
  "SBS42", "SBS45", "SBS46", "SBS59"
)
SBS192_sig_GRCh37_name_order <-
  sapply(SBS192_sig_GRCh37_name_order, FUN = function(x) {
    ifelse(x %in% need_minus_E, paste0(x, "-E"), x)
  })
SBS192_sig_GRCh37 <-
  SBS192_sig_GRCh37[, SBS192_sig_GRCh37_name_order, drop = FALSE]

COSMIC_v3.1$signature[["GRCh37"]]$SBS192 <- SBS192_sig_GRCh37

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
  COSMIC_v3.1$signature[[genomes[i]]]$DBS78 <- DBS78_sig
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
COSMIC_v3.1$signature[["GRCh37"]]$ID <- ID_sig_GRCh37

usethis::use_data(COSMIC_v3.1, overwrite = TRUE)

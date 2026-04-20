# Source this file from cosmicsig package root
cat(getwd(), "\n")

release <- "3.5"
genomes <- c("GRCh37", "GRCh38", "mm9", "mm10", "rn6")

url_prefix <- "https://cancer.sanger.ac.uk/signatures/documents/"

# Document numbers were obtained by inspecting
# https://cancer.sanger.ac.uk/signatures/downloads/ and decoding the Wagtail
# relay IDs for each "Human Cancer v3.5" download entry. Order matches the
# `genomes` vector above.
SBS_document_number <- c(
  GRCh37 = 2159, GRCh38 = 2158, mm9 = 2157, mm10 = 2156, rn6 = 2155
)
DBS_document_number <- c(
  GRCh37 = 2166, GRCh38 = 2165, mm9 = 2164, mm10 = 2163, rn6 = 2162
)
ID_document_number <- c(GRCh37 = 2161)

folder_prefix <- paste0("./data-raw/COSMIC_v", release, "/data/")
folder_paths <- paste0(folder_prefix, genomes)
names(folder_paths) <- genomes

# Create folders for putting the signature files for different genomes
out <-
  sapply(folder_paths, FUN = dir.create, recursive = TRUE, showWarnings = FALSE)

download_one <- function(docnum, filename, destdir) {
  url <- paste0(url_prefix, docnum, "/", filename)
  dest <- file.path(destdir, filename)
  download.file(url = url, destfile = dest, quiet = TRUE, mode = "wb")
}

# Download SBS96 signatures
for (g in genomes) {
  filename <- paste0("COSMIC_v", release, "_SBS_", g, ".txt")
  download_one(SBS_document_number[[g]], filename, folder_paths[[g]])
}

# Download DBS78 signatures
for (g in genomes) {
  filename <- paste0("COSMIC_v", release, "_DBS_", g, ".txt")
  download_one(DBS_document_number[[g]], filename, folder_paths[[g]])
}

# Download ID83 signature (only available for GRCh37)
id_filename <- paste0("COSMIC_v", release, "_ID_GRCh37.txt")
download_one(ID_document_number[["GRCh37"]], id_filename, folder_paths[["GRCh37"]])

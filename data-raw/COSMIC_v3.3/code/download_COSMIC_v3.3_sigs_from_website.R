# Source this file from cosmicsig package root
cat(getwd(), "\n")

release <- "3.3"
genomes <- c("GRCh37", "GRCh38", "mm9", "mm10", "rn6")

url_prefix <- "https://cancer.sanger.ac.uk/signatures/documents/"
SBS_document_number <- 2046:2050
DBS_document_number <- 1902:1906
ID_document_number <- 1907

folder_prefix <- paste0("./data-raw/COSMIC_v", release, "/data/")
folder_paths <- paste0(folder_prefix, genomes)

# Create folders for putting the signature files for different genomes
out <-
  sapply(folder_paths, FUN = dir.create, recursive = TRUE, showWarnings = FALSE)

# Download SBS96 signatures
for (i in 1:length(genomes)) {
  SBS_sig_filename <- paste0("COSMIC_v", release, ".1_SBS_", genomes[i], ".txt")
  SBS_URL_path <- paste0(url_prefix, SBS_document_number[i], "/", SBS_sig_filename)
  dest_file_path <- paste0(folder_paths[i], "/", SBS_sig_filename)
  download.file(
    url = SBS_URL_path,
    destfile = paste0(folder_paths[i], "/", SBS_sig_filename),
    quiet = TRUE
  )
}

# Download DBS signatures
for (i in 1:length(genomes)) {
  DBS_sig_filename <- paste0("COSMIC_v", release, "_DBS_", genomes[i], ".txt")
  DBS_URL_path <- paste0(url_prefix, DBS_document_number[i], "/", DBS_sig_filename)
  dest_file_path <- paste0(folder_paths[i], "/", DBS_sig_filename)
  download.file(
    url = DBS_URL_path,
    destfile = paste0(folder_paths[i], "/", DBS_sig_filename),
    quiet = TRUE
  )
}

# Download ID signature (only available for GRCh37)
ID_sig_filename <- paste0("COSMIC_v", release, "_ID_", "GRCh37", ".txt")
ID_URL_path <- paste0(url_prefix, ID_document_number, "/", ID_sig_filename)
dest_file_path <- paste0(folder_paths[1], "/", ID_sig_filename)
download.file(
  url = ID_URL_path,
  destfile = paste0(folder_paths[1], "/", ID_sig_filename),
  quiet = TRUE
)

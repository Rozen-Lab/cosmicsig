# Source this file from cosmicsig package root
cat(getwd(), "\n")

release <- "3.1"
genomes <- c("GRCh37", "GRCh38", "mm9", "mm10", "rn6")

url_prefix <- "https://cancer.sanger.ac.uk/signatures/documents/"
SBS_document_number <- 441:445
DBS_document_number <- 435:439
ID_document_number <- 440

folder_prefix <- paste0("./data-raw/COSMIC_v", release, "/data/")
folder_paths <- paste0(folder_prefix, genomes)

# Create folders for putting the signature files for different genomes
out <- sapply(folder_paths, FUN = dir.create, recursive = TRUE, showWarnings = FALSE)

# Download SBS96 signatures
for (i in 1:length(genomes)) {
  SBS_sig_filename <- paste0("COSMIC_v", release, "_SBS_", genomes[i], ".txt")
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

# Download SBS192 signatures (only available for GRCh37)

# SBS84, SBS85, SBS86, SBS87, SBS89(total 5)
# does not have TSB signature
SBS192_sig_number <- c(
  1:6, paste0(7, letters[1:4]), 8:9, paste0(10, letters[1:2]),
  11:16, paste0(17, letters[1:2]), 18:60, 88, 90
)
stopifnot(length(SBS192_sig_number) == 67)

SBS192_sigs_urls <-
  paste0(
    "https://cancer.sanger.ac.uk/sigs-assets-20/SBS_vignettes/sigProfiler_TSB_signatures_SBS",
    SBS192_sig_number, ".csv"
  )

# Create folder for putting SBS192 signature files
SBS192_folder_path <- file.path(folder_paths[1], "SBS192")
dir.create(path = SBS192_folder_path, showWarnings = FALSE, recursive = TRUE)

time_used_for_SBS192 <- system.time({
  sapply(SBS192_sigs_urls, FUN = function(x) {
    download.file(
      url = x,
      destfile = file.path(SBS192_folder_path, basename(x)),
      quiet = TRUE
    )
  })
})
print(time_used_for_SBS192)

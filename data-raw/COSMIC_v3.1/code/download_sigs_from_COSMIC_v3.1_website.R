# Source this file from cosmicsig package root
cat(getwd(), "\n")

# Download COSMIC v3.1 SBS96 signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/441/COSMIC_v3.1_SBS_GRCh37.txt",
              destfile = "./data-raw/COSMIC_v3.1/data/COSMIC_v3.1_SBS_GRCh37.txt",
              quiet = TRUE)

# Download COSMIC v3.1 DBS78 signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/435/COSMIC_v3.1_DBS_GRCh37.txt",
              destfile = "./data-raw/COSMIC_v3.1/data/COSMIC_v3.1_DBS_GRCh37.txt",
              quiet = TRUE)

# Download COSMIC v3.1 ID signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/440/COSMIC_v3.1_ID_GRCh37.txt",
              destfile = "./data-raw/COSMIC_v3.1/data/COSMIC_v3.1_ID_GRCh37.txt",
              quiet = TRUE)

# Download SBS192 signatures from COSMIC v3.1 website
# SBS84, SBS85, SBS86, SBS87, SBS89(total 5)
# does not have TSB signature
SBS192.sig.number <- c(1:6, paste0(7, letters[1:4]), 8:9, paste0(10, letters[1:2]),
                       11:16, paste0(17, letters[1:2]), 18:60, 88, 90)
stopifnot(length(SBS192.sig.number) == 67)
SBS192.sigs.urls <-
  paste0("https://cancer.sanger.ac.uk/sigs-assets-20/SBS_vignettes/sigProfiler_TSB_signatures_SBS",
         SBS192.sig.number, ".csv")
time.used.for.SBS192 <- system.time({
  sapply(SBS192.sigs.urls, FUN = function(x) {
    download.file(url = x,
                  destfile = paste0("./data-raw/COSMIC_v3.1/data/SBS192/",
                                    basename(x)),
                  quiet = TRUE)
  })
})
print(time.used.for.SBS192)

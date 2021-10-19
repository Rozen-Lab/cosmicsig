# Source this file from cosmicsig package root
cat(getwd(), "\n")

# Generate COSMIC v3.1 genome signatures
library(ICAMS)

# Generate SBS96 signatures
SBS96.sigs.GRCh37 <-
  ICAMS::ReadCatalog(file = "./data-raw/COSMIC_v3.1/data/COSMIC_v3.1_SBS_GRCh38.txt",
                     ref.genome = "GRCh38",
                     catalog.type = "counts.signature",
                     region = "genome")
attr(SBS96.sigs.GRCh37, "ref.genome") <- NULL

# Generate DBS78 signatures
DBS78.sigs.GRCh37 <-
  ICAMS::ReadCatalog(file = "./data-raw/COSMIC_v3.1/data/COSMIC_v3.1_DBS_GRCh38.txt",
                     ref.genome = "GRCh38",
                     catalog.type = "counts.signature",
                     region = "genome")
attr(DBS78.sigs.GRCh37, "ref.genome") <- NULL

# Generate ID signatures
ID.sigs.GRCh37 <-
  ICAMS::ReadCatalog(file = "./data-raw/COSMIC_v3.1/data/COSMIC_v3.1_ID_GRCh37.txt",
                     ref.genome = "GRCh37",
                     catalog.type = "counts.signature",
                     region = "genome")
attr(ID.sigs.GRCh37, "ref.genome") <- NULL

# Generate SBS192 signatures
SBS192.sigs.files <-
  list.files("data-raw/COSMIC_v3.1/data/SBS192/", full.names = TRUE)
stopifnot(length(SBS192.sigs.files) == 67)
SBS192.sigs.list <- lapply(SBS192.sigs.files, FUN = function(x){
  ICAMS::ReadCatalog(x, catalog.type = "counts.signature",
                     ref.genome = "GRCh37",
                     region = "transcript")
})
stopifnot(all(sapply(SBS192.sigs.list, FUN = function(x) {
  grepl("GRCh37", colnames(x))
})))
SBS192.sigs.GRCh37 <- do.call(cbind, SBS192.sigs.list)
attr(SBS192.sigs.GRCh37, "ref.genome") <- NULL

colnames(SBS192.sigs.GRCh37) <-
  gsub(pattern = "_GRCh37", replacement = "", x = colnames(SBS192.sigs.GRCh37))
colnames(SBS192.sigs.GRCh37) <-
  gsub(pattern = ".E", replacement = "-E", x = colnames(SBS192.sigs.GRCh37))

# SBS84, SBS85, SBS86, SBS87, SBS89(total 5)
# does not have TSB signature
SBS192.sigs.GRCh37.names.order <-
  paste0("SBS", c(1:6, paste0(7, letters[1:4]), 8:9, paste0(10, letters[1:2]),
                  11:16, paste0(17, letters[1:2]), 18:60, 88, 90))
need.minus.E <-
  c("SBS23", "SBS25", "SBS27", "SBS29",
    "SBS42", "SBS45", "SBS46", "SBS59")
SBS192.sigs.GRCh37.names.order <-
  sapply(SBS192.sigs.GRCh37.names.order, FUN = function(x) {
    ifelse(x %in% need.minus.E, paste0(x, "-E"), x)})
SBS192.sigs.GRCh37 <-
  SBS192.sigs.GRCh37[, SBS192.sigs.GRCh37.names.order, drop = FALSE]

# Put all the signatures inside a list
COSMIC_v3.1 <- list()

COSMIC_v3.1$signature <- list(SBS96 = SBS96.sigs.GRCh37,
                              SBS192 = SBS192.sigs.GRCh37,
                              DBS78 = DBS78.sigs.GRCh37,
                              ID = ID.sigs.GRCh37)

usethis::use_data(COSMIC_v3.1, overwrite = TRUE)

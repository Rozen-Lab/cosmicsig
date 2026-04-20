# Source this file from cosmicsig package root
cat(getwd(), "\n")
source("data-raw/COSMIC_v3.5/code/generate_COSMIC_v3.5_genome_sigs.R")
source("data-raw/COSMIC_v3.5/code/generate_COSMIC_v3.5_etiologies.R")

COSMIC_v3.5 <- list()
COSMIC_v3.5$signature <- signature
COSMIC_v3.5$etiology <- etiology
usethis::use_data(COSMIC_v3.5, overwrite = TRUE)

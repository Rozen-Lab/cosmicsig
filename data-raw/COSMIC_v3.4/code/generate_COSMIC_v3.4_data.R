# Source this file from cosmicsig package root
cat(getwd(), "\n")
source("data-raw/COSMIC_v3.4/code/generate_COSMIC_v3.4_genome_sigs.R")
source("data-raw/COSMIC_v3.4/code/generate_COSMIC_v3.4_etiologies.R")

COSMIC_v3.4 <- list()
COSMIC_v3.4$signature <- signature
COSMIC_v3.4$etiology <- etiology
usethis::use_data(COSMIC_v3.4, overwrite = TRUE)

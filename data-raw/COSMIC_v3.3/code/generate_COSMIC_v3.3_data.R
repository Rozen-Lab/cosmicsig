# Source this file from cosmicsig package root
cat(getwd(), "\n")
source("data-raw/COSMIC_v3.3/code/generate_COSMIC_v3.3_genome_sigs.R")
source("data-raw/COSMIC_v3.3/code/generate_COSMIC_v3.3_etiologies.R")

COSMIC_v3.3 <- list()
COSMIC_v3.3$signature <- signature
COSMIC_v3.3$etiology <- etiology
usethis::use_data(COSMIC_v3.3, overwrite = TRUE)

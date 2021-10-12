# Source this file from cosmicsig package root
cat(getwd(), "\n")
source("data-raw/COSMIC_v3.2/code/generate_COSMIC_v3.2_genome_sigs.R")
source("data-raw/COSMIC_v3.2/code/generate_COSMIC_v3.2_etiologies.R")

COSMIC_v3.2 <- list()
COSMIC_v3.2$signature <- signature
COSMIC_v3.2$etiology <- etiology
usethis::use_data(COSMIC_v3.2, overwrite = TRUE)

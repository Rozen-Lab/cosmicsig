# Source this file from cosmicsig package root

cat(getwd(), "\n")

tmp.SBS96 <-
  data.table::fread("data-raw/COSMIC_v3.3/data/etiology/COSMIC_v3.3_SBS_proposed_etiology.csv")
sigs.etiologies.SBS96 <-
  matrix(tmp.SBS96$proposed_etiology,
    ncol = 1,
    dimnames = list(tmp.SBS96$name, "proposed_etiology")
  )

tmp.DBS78 <-
  data.table::fread("data-raw/COSMIC_v3.3/data/etiology/COSMIC_v3.3_DBS_proposed_etiology.csv")
sigs.etiologies.DBS78 <-
  matrix(tmp.DBS78$proposed_etiology,
    ncol = 1,
    dimnames = list(tmp.DBS78$name, "proposed_etiology")
  )

tmp.ID <-
  data.table::fread("data-raw/COSMIC_v3.3/data/etiology/COSMIC_v3.3_ID_proposed_etiology.csv")
sigs.etiologies.ID <-
  matrix(tmp.ID$proposed_etiology,
    ncol = 1,
    dimnames = list(tmp.ID$name, "proposed_etiology")
  )

etiology <- list(
  SBS96 = sigs.etiologies.SBS96,
  DBS78 = sigs.etiologies.DBS78,
  ID = sigs.etiologies.ID
)

usethis::use_data(etiology, overwrite = TRUE)

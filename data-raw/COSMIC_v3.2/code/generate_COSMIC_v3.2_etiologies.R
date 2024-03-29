# Source this file from cosmicsig package root

cat(getwd(), "\n")

tmp.SBS96 <-
  data.table::fread("data-raw/COSMIC_v3.2/data/etiology/COSMIC_v3.2_SBS_proposed_etiology.csv")
sigs.etiologies.SBS96 <-
  matrix(tmp.SBS96$proposed_etiology,
    ncol = 1,
    dimnames = list(tmp.SBS96$name, "proposed_etiology")
  )

tmp.SBS192 <-
  data.table::fread("data-raw/COSMIC_v3.2/data/etiology/COSMIC_v3.2_SBS_proposed_etiology.csv")
# Currently SBS10c, SBS10d, SBS84, SBS85, SBS86, SBS87, SBS89, SBS91 (total 8)
# does not have TSB signature
tmp2.SBS192 <-
  tmp.SBS192[!name %in% c("SBS10c", "SBS10d", "SBS84", "SBS85", "SBS86", "SBS87", "SBS89", "SBS91"), ]
sigs.etiologies.SBS192 <-
  matrix(tmp2.SBS192$proposed_etiology,
    ncol = 1,
    dimnames = list(SBS96_ID_to_SBS192_ID(tmp2.SBS192$name), "proposed_etiology")
  )

tmp.DBS78 <-
  data.table::fread("data-raw/COSMIC_v3.2/data/etiology/COSMIC_v3.2_DBS_proposed_etiology.csv")
sigs.etiologies.DBS78 <-
  matrix(tmp.DBS78$proposed_etiology,
    ncol = 1,
    dimnames = list(tmp.DBS78$name, "proposed_etiology")
  )

tmp.ID <-
  data.table::fread("data-raw/COSMIC_v3.2/data/etiology/COSMIC_v3.2_ID_proposed_etiology.csv")
sigs.etiologies.ID <-
  matrix(tmp.ID$proposed_etiology,
    ncol = 1,
    dimnames = list(tmp.ID$name, "proposed_etiology")
  )

etiology <- list(
  SBS96 = sigs.etiologies.SBS96,
  SBS192 = sigs.etiologies.SBS192,
  DBS78 = sigs.etiologies.DBS78,
  ID = sigs.etiologies.ID
)

usethis::use_data(etiology, overwrite = TRUE)

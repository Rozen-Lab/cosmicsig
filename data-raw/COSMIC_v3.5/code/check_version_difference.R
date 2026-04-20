devtools::load_all()

tmp1 <- COSMIC_v3.4$signature$GRCh37$SBS96
dim(tmp1)

sbs_file <-
  "data-raw/COSMIC_v3.5/data/GRCh37/COSMIC_v3.5_SBS_GRCh37.txt"
tmp2 <-
  ICAMS::ReadCatalog(
    file = sbs_file,
    catalog.type = "counts.signature"
  )
dim(tmp2)

setdiff(colnames(tmp2), colnames(tmp1))

tmp3 <- COSMIC_v3.4$signature$GRCh37$DBS78
dim(tmp3)

dbs_file <-
  "data-raw/COSMIC_v3.5/data/GRCh37/COSMIC_v3.5_DBS_GRCh37.txt"
tmp4 <-
  ICAMS::ReadCatalog(
    file = dbs_file,
    catalog.type = "counts.signature"
  )
dim(tmp4)

setdiff(colnames(tmp4), colnames(tmp3))

tmp5 <- COSMIC_v3.4$signature$GRCh37$ID
dim(tmp5)

id_file <-
  "data-raw/COSMIC_v3.5/data/GRCh37/COSMIC_v3.5_ID_GRCh37.txt"
tmp6 <-
  ICAMS::ReadCatalog(
    file = id_file,
    catalog.type = "counts.signature"
  )
dim(tmp6)

setdiff(colnames(tmp6), colnames(tmp5))

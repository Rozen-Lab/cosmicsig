# Source this file from cosmicsig package root
cat(getwd(), "\n")

# Download COSMIC v3.0 SBS96 signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/431/COSMIC_v3_SBS_GRCh38.txt",
              destfile = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_SBS_GRCh38.txt",
              quiet = TRUE)

# Download COSMIC v3.0 DBS78 signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/425/COSMIC_v3_DBS_GRCh38.txt",
              destfile = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_DBS_GRCh38.txt",
              quiet = TRUE)

# Download COSMIC v3.0 ID signatures from COSMIC download website
# (https://cancer.sanger.ac.uk/signatures/downloads/)
download.file(url = "https://cancer.sanger.ac.uk/signatures/documents/429/COSMIC_v3_ID_GRCh37.txt",
              destfile = "./data-raw/COSMIC_v3.0/data/COSMIC_v3.0_ID_GRCh37.txt",
              quiet = TRUE)

# As the original URL from downloading SBS192 signatures from COSMIC v3.0
# website can not be found, we do not add SBS192 signatures (COSMIC v3.0)

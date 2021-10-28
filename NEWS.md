# cosmicsig 1.0.3
* Applied tidyverse style to existing code

# cosmicsig 1.0.2
* Added signatures renormalized for other genomes. The available genomes are `GRCh37`,
`GRCh38`, `mm9`, `mm10` and `rn6`

# cosmicsig 1.0.1
* Used GRCh38 signatures as the default for SBS96 and DBS78 in variable `signature`,
`COSMIC_v3.2`, `COSMIC_v3.1` and `COSMIC_v3.0`

* Removed `genome` level structure from variables `signature`,
`COSMIC_v3.2`, `COSMIC_v3.1` and `COSMIC_v3.0`

* Removed argument `cosmic_version` from exported function `get_etiology`

* Added explanation for "-E" in function `SBS96_ID_to_SBS192_ID`

# cosmicsig 1.0.0
* Added exported package data variable `signature`, `etiology`, `COSMIC_v3.2`,
`COSMIC_v3.1` and `COSMIC_v3.0`

* Added exported function `get_etiology`, `SBS96_ID_to_SBS192_ID` and automated
tests



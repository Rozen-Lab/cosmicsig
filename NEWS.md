# cosmicsig 1.0.7
* Fixed the URL in README.

# cosmicsig 1.0.6
* Removed some long running examples.

# cosmicsig 1.0.5
* Updated the DESCRIPTION to remove false-positive misspellings.

# cosmicsig 1.0.4
* Updated the DESCRIPTION to use single quotes for package name.

* Deleted the extra word "into" in DESCRIPTION.

* Deleted "| file LICENSE" in DESCRIPTION and the file.

* Used Authors@R field in DESCRIPTION.

* Added Rd-tag \value in possible_artifacts.Rd and rare_signatures.Rd.

* Removed \dontrun{} in the examples.

* Wrapped examples that need packages in 'Suggests' in `if(requireNamespace("pkgname")){}`.

# cosmicsig 1.0.3
* Applied tidyverse style to existing code

* Added new exported function `possible_artifacts`, `rare_signatures`

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



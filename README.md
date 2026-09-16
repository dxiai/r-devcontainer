# r-devcontainer - A working R-Devcontainer for the Data Sciences

This gives you a unique working environment on your Laptop and in GitHub Code Spaces (and similar environments and editors).

## Getting started 

### Preparations

1. Install [Docker](https://www.docker.com/products/docker-desktop/)
 
   a. on Windows only: Install [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
   
3. Install [VSCode](https://code.visualstudio.com)
4. Install the VSCode extension `Remote Development`

### Using the Dev-Container 

1. In VSCode open a new terminal.
2. Run the following command in the terminal.
   ```
   docker pull ghcr.io/dxiai/r-devcontainer:latest
   ```
3. Open the project of your choice or start a new project.
4. Place the following json into the `.devcontainer/devcontainer.json` file within your project.

```json
{
  "image":"ghcr.io/dxiai/r-devcontainer:latest",

  "customizations": {
        "vscode": {
          "extensions": [
            "reditorsupport.r",
            "reditorsupport.r-syntax",

            "janisdd.vscode-edit-csv",
            "mechatroner.rainbow-csv",
            "redhat.vscode-yaml"
          ],
          "settings": {
            "r.rterm.linux": "/usr/local/bin/radian",
            "r.bracketedPaste": true,
            "workbench.editor.tabActionReserveSpace": true,
            "editor.tabSize": 4
          }
        }
  }
}
```

5. Click on the double arrows in the bottom left corner of VSCode.
6. Select `Reopen in Container`.
7. Be patient, this takes up to five minutes on *first* startup.
8. Check that there is a green label stating `Dev Container @ desktop-linux` in the bottom left corner of VSCode.
9. **DO NOT** add the `.devcontainer` folder to your `.gitignore` list and track it with your project.

## What is in the box?

This container comes with `languageserver`, `httpgd`, and `radian` preinstalled for a modern deep VSCode integration. 

[`pak`](https://pak.r-lib.org) is preinstalled and replaces the old `install_packages()` function. 

### R-packages

Directly installed:
- tidyverse
- rstatix

All packages:

- abind
- AsioHeaders
- askpass
- backports
- base64enc
- bit
- bit64
- blob
- brew
- broom
- bslib
- cachem
- callr
- car
- carData
- cellranger
- cli
- clipr
- collections
- colorspace
- commonmark
- conflicted
- corrplot
- cowplot
- cpp11
- crayon
- curl
- data.table
- DBI
- dbplyr
- Deriv
- desc
- digest
- doBy
- dplyr
- dtplyr
- evaluate
- farver
- fastmap
- fontawesome
- forcats
- forecast
- Formula
- fracdiff
- fs
- gargle
- generics
- ggplot2
- glue
- googledrive
- googlesheets4
- gtable
- haven
- highr
- hms
- htmltools
- httpgd
- httr
- ids
- isoband
- jquerylib
- jsonlite
- knitr
- labeling
- languageserver
- lifecycle
- lintr
- lme4
- lmtest
- lubridate
- magrittr
- MatrixModels
- memoise
- mime
- minqa
- modelr
- nloptr
- numDeriv
- openssl
- otel
- pak
- pbkrtest
- pillar
- pkgbuild
- pkgconfig
- pkgload
- prettyunits
- processx
- progress
- ps
- purrr
- quantreg
- R.cache
- R.methodsS3
- R.oo
- R.utils
- R6
- ragg
- rappdirs
- rbibutils
- RColorBrewer
- Rcpp
- RcppArmadillo
- RcppEigen
- Rdpack
- rdtools
- readr
- readxl
- reformulas
- rematch
- rematch2
- reprex
- rex
- rlang
- rmarkdown
- roxygen2
- rprojroot
- rstatix
- rstudioapi
- rvest
- S7
- sass
- scales
- selectr
- SparseM
- stringi
- stringr
- styler
- sys
- systemfonts
- textshaping
- tibble
- tidyr
- tidyselect
- tidyverse
- timechange
- timeDate
- tinytex
- tzdb
- unigd
- urca
- utf8
- uuid
- vctrs
- viridisLite
- vroom
- withr
- xfun
- xml2
- xmlparsedata
- yaml
- zoo


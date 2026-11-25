FROM mcr.microsoft.com/devcontainers/base:trixie

RUN apt update && \
    apt upgrade -y && \
    apt install -y r-base r-base-dev pipx gh yp jq && \
    Rscript -e 'install.packages("pak"); pak::pak(c("languageserver","httpgd", "tidyverse", "rstatix", "Matrix", "tidytext", "cluster", "NHANES", "writexl",   "colorBlindness", "directlabels", "dplyr", "ggforce", "gghighlight", "ggnewscale", "ggplot2", "ggraph", "ggrepel", "ggtext", "ggthemes", "hexbin", "Hmisc", "mapproj", "maps", "munsell", "ozmaps", "paletteer", "patchwork", "rmapshaper", "scico", "seriation", "sf", "stars", "tidygraph", "tidyr", "wesanderson", "tidymodels"))' && \
    PIPX_HOME=/opt/pipx PIPX_BIN_DIR=/usr/local/bin pipx install radian && \
    # Not Available on Debian, yet
    # PIPX_HOME=/opt/pipx PIPX_BIN_DIR=/usr/local/bin pipx cache purge && \
    apt clean && \
    apt auto-remove && \
    apt auto-clean && \
    Rscript -e 'pak::pak_cleanup(force = TRUE)'


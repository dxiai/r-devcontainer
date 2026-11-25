FROM mcr.microsoft.com/devcontainers/base:trixie

RUN apt update && \
    apt upgrade -y && \
    apt install -y r-base r-base-dev pipx gh yq jq && \
    Rscript -e 'install.packages("pak"); pak::pak(c("languageserver","httpgd", "jgd", "tidyverse", "rstatix", "Matrix", "tidytext", "cluster", "NHANES", "writexl",   "colorBlindness", "directlabels", "dplyr", "ggforce", "gghighlight", "ggnewscale", "ggplot2", "ggraph", "ggrepel", "ggtext", "ggthemes", "hexbin", "Hmisc", "mapproj", "maps", "munsell", "ozmaps", "paletteer", "patchwork", "rmapshaper", "scico", "seriation", "sf", "stars", "tidygraph", "tidyr", "wesanderson", "tidymodels"))' && \
	# install sess from the repo to make the container run smoother
    Rscript -e ' install.packages("sess", repos = c("https://reditorsupport.r-universe.dev", getOption("repos")))' && \
	# will be offically replaced by arf as soon as arf is somewhat stable
    PIPX_HOME=/opt/pipx PIPX_BIN_DIR=/usr/local/bin pipx install radian && \
	# install arf for testing
	curl --proto '=https' --tlsv1.2 -LsSf https://github.com/eitsupi/arf/releases/latest/download/arf-console-installer.sh | sh && \
    # Not Available on Debian, yet
    # PIPX_HOME=/opt/pipx PIPX_BIN_DIR=/usr/local/bin pipx cache purge && \
    apt clean && \
    apt autoremove && \
    apt autoclean && \
    Rscript -e 'pak::pak_cleanup(force = TRUE)'


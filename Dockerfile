FROM mcr.microsoft.com/devcontainers/base:trixie

RUN apt update && \
    apt upgrade -y && \
    apt install -y r-base r-base-dev && \
    Rscript -e 'install.packages("pak"); pak::pak(c("languageserver","httpgd", "tidyverse", "rstatix"))' && \
    apt clean && \
    apt auto-remove && \
    apt auto-clean && \
    Rscript -e 'pak::pak_cleanup(force = TRUE)'

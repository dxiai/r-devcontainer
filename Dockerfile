FROM mcr.microsoft.com/devcontainers/base:trixie

RUN apt update && \
    apt upgrade -y && \
    apt install -y r-base r-base-dev && \
    Rscript -e 'install.packages("pak")' && \
    Rscript -e 'pak::pak(c("languageserver","httpgd", "tidyverse", "rstatix"))'

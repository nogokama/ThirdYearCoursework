FROM debian:10.1

WORKDIR /latex 

RUN \ 
    # --mount=type=cache,target=/cache \ 
    apt update && apt install --yes  \
    git \
    build-essential \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-science \
    cm-super \
    texlive-generic-extra \
    texlive-lang-cyrillic \
    texlive-bibtex-extra \
    biber

COPY . .

ENTRYPOINT ["/bin/bash"]

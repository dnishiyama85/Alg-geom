# imported from https://qiita.com/eisoku9618/items/423a3638a727ea2846d5
FROM ubuntu:18.04

RUN apt update && apt install -y --no-install-recommends \
# for (u)platex
texlive-lang-japanese \
# for CTAN packages
texlive-plain-generic texlive-latex-base texlive-latex-extra \
# for latexmk
latexmk \
# for noto font: Bold and Regular
fonts-noto-cjk \
# for noto font: Black, DemiLight, Light, Medium, Thin and so on
fonts-noto-cjk-extra \
&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

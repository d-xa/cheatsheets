venv:
	python3 -m venv .venv

install-pip:
	. .venv/bin/activate; \
	export PIP_USER=no; \
	pip install --upgrade pip && pip install -r requirements.txt

install-tex:
	sudo apt update && \
	sudo apt-get install texlive-latex-recommended texlive-latex-extra \
                	texlive-fonts-recommended texlive-fonts-extra \
                    texlive-xetex latexmk

install:
	make venv
	make install-pip
	make install-tex

htmlbook:
	rm -rf book/_build/html/*
	. .venv/bin/activate; \
	jupyter-book build book/

pdfbook:
	rm -rf book/_build/latex/*
	. .venv/bin/activate; \
	jupyter-book build book/ --builder pdflatex

updatedocs:
	touch docs/.nojekyll
	cp -rf book/_build/html/* docs/

all: install htmlbook pdfbook 
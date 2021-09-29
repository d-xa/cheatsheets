venv:
	python3 -m venv .venv

install:
	. .venv/bin/activate; \
	pip install --upgrade pip && pip install -r requirements.txt

install-tex:
	sudo apt-get install texlive-latex-recommended texlive-latex-extra \
                     texlive-fonts-recommended texlive-fonts-extra \
                     texlive-xetex latexmk
htmlbook:
	rm -rf cheatsheets-book/_build/html/*
	. .venv/bin/activate; \
	jupyter-book build cheatsheets-book/

pdfbook:
	rm -rf cheatsheets-book/_build/latex/*
	. .venv/bin/activate; \
	jupyter-book build cheatsheets-book/ --builder pdflatex

updatedocs:
	touch docs/.nojekyll
	cp -rf cheatsheets-book/_build/html/* docs/

style:
	pycodestyle *.py

test:
	pytest test*.py

lint:
	pylint --disable=R,C *.py

package:
	python setup.py sdist bdist_wheel

develop:
	python setup.py develop

clean:
	python setup.py clean --all

all: install lint test package
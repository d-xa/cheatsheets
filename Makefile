venv:
	python3 -m venv .venv

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

htmlbook:
	rm -r cheatsheets-book/_build/html/*
	jupyter-book build cheatsheets-book/

pdfbook:
	rm -r cheatsheets-book/_build/html/*
	jupyter-book build cheatsheets-book/ --builder pdfhtml

updatedocs:
	touch docs/.nojekyll
	cp -r cheatsheets-book/_build/html/* docs/

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
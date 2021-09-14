# Commands for working with jupyter-book

> Make virtual environment
```bash
make venv
``` 

> Activate venv
```bash
. .venv/bin/activate
``` 

> Create a book project
```python
jupyter-book create cheatsheets-book
```

> Build the html version of book
```bash
make htmlbook
```
or
```python
jupyter-book build cheatsheets-book/
```

> Build the pdf version of book
```bash
make pdfbook
```
or
```python
jupyter-book build cheatsheets-book/ --builder pdfhtml
```
source: jupyterbook.org/advanced/pdf

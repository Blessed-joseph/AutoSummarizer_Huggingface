#Phony permet d'exécuter un fichier même si il n'appartient pas au répertoire
# d'exécution

.PHONY: install test format lint run all   
install:
	pip install --upgrade pip &&\
    pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello --cov=greetings --cov=smath --cov=web tests

format:
	black *.py

lint:
	pylint --disable=R,C hello.py app.py

run:
	python app.py

one-test:
	python -m pytest -vv tests/test_greetings.py::test_my_name4

all: install format lint test
.PHONY: clean

all: clean test

install:
	pip install -r requirements.txt
	pip install -e .

clean:
	find . \( -name \*.pyc -o -name \*.pyo -o -name __pycache__ \) -prune -exec rm -rf {} +
	rm -rf shellwhat_ext.egg-info

test: clean
	pytest --cov=shellwhat_ext
	codecov
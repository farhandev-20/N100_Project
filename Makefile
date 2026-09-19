.PHONY: install etl test audit clean

install:
	pip install -r requirements.txt

etl:
	python -m src.etl.pipeline

test:
	pytest -v

audit:
	python -m src.etl.pipeline --audit-only

clean:
	rm -rf __pycache__ .pytest_cache .venv nifty100.db output/*.csv

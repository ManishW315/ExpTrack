ifeq ($(OS), Windows_NT)
# Styling
.PHONY: style
style:
	black . --line-length 150 --exclude exptrack_venv
	isort . --skip exptrack_venv
	flake8 . --exit-zero --exclude exptrack_venv
else
# Styling
.PHONY: style
style:
	python3 -m black . --line-length 150 --exclude exptrack_venv
	python3 -m isort . -rc --skip exptrack_venv
	python3 -m flake8 . --exit-zero --exclude exptrack_venv
endif
.PHONY: setup activate tests notebooks prek docs docs-preview

setup:
	uv sync --all-extras

activate:
	@echo "Run: source .venv/bin/activate"

tests:
	uv run pytest

# Execute the example notebooks end to end (downloads BART, re-runs inference)
# so they cannot silently rot. This is distinct from `make docs`, which renders
# them from stored outputs without re-running.
notebooks:
	uv run pytest --nbmake docs/examples/

prek:
	uv run prek run --all-files

# Build the documentation site into great-docs/_site/ (the API reference is
# generated from docstrings; notebooks render from their stored outputs, so
# MCMC does not re-run at build time). The per-notebook .qmd wrappers are
# generated on the fly and removed afterwards (see scripts/build_docs.py).
docs:
	uv run python scripts/build_docs.py build

# Build and serve the site locally with live reload.
docs-preview:
	uv run python scripts/build_docs.py preview

.PHONY: help
help:                       ## Show the help.
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@fgrep "##" Makefile | fgrep -v fgrep


.PHONY: bundle
bundle:                     ## Use @redocly/cli to bundle the split YAML OpenAPI spec to one YAML file
	touch bundle.yaml
	rm bundle.yaml
	node_modules/@redocly/cli/bin/cli.js bundle spec/openapi.yaml -o bundle.yaml

.PHONY: bundle-full
bundle-full:                ## Use @redocly/cli to bundle the split YAML full OpenAPI spec to one YAML file
	# Rename full spec to 'openapi.yaml', rename smaller spec to temp name.
	mv spec/openapi.yaml spec/openapi-temporary.yaml
	mv spec/openapi-full.yaml spec/openapi.yaml
	touch bundle.yaml
	rm bundle.yaml
	node_modules/@redocly/cli/bin/cli.js bundle spec/openapi.yaml -o bundle.yaml
	# Undo temporary renaming.
	mv spec/openapi.yaml spec/openapi-full.yaml
	mv spec/openapi-temporary.yaml spec/openapi.yaml

.PHONY: clean
clean:                      ## Remove temporary generated files
	touch bundle.yaml report.html
	rm bundle.yaml report.html

.PHONY: expand-yaml-parsing
expand-yaml-parsing:        ## Expand YAML parsing to maximum, to handle large bundled YAML file
	export JAVA_OPTS="-DmaxYamlCodePoints=99999999"

.PHONY: html
# --hard-mode for OWASP ruleset
html:                       ## Generate HTML page for vacuum's API spec linting report
html: bundle
	node_modules/@quobix/vacuum/bin/vacuum html-report bundle.yaml --ruleset lint/ruleset-vacuum.yaml

.PHONY: html-open
html-open:                  ## Generate and open HTML page for vacuum's API spec linting report
html-open: bundle html
	open report.html

## ---OPENAPI LINTING--------------

.PHONY: validate
validate:                   ## Display linting results from all checks
validate: bundle validate-vacuum validate-openapi-generator validate-yamllint validate-redocly clean

.PHONY: validate-vacuum
validate-vacuum:            ## Display linting results from @quobix/vacuum
validate-vacuum: bundle expand-yaml-parsing
	node_modules/@quobix/vacuum/bin/vacuum lint bundle.yaml --ruleset lint/ruleset-vacuum.yaml --no-banner

.PHONY: validate-openapi-generator
validate-openapi-generator: ## Display linting results from @openapitools/openapi-generator-cli
validate-openapi-generator: bundle expand-yaml-parsing
	node_modules/@openapitools/openapi-generator-cli/main.js validate -i bundle.yaml --recommend

.PHONY: validate-yamllint
validate-yamllint:          ## Display linting results from yamllint
	python3 -m yamllint -c lint/ruleset-yamllint.yaml spec

.PHONY: validate-redocly
validate-redocly:           ## Display linting results from @redocly/cli
	node_modules/@redocly/cli/bin/cli.js lint spec/openapi.yaml --config=lint/ruleset-redocly.yaml --format=stylish

## ---PYTHON SCRIPTS LINTING-------

.PHONY: show
python-show:               ## Show the current Python environment.
	@echo "Current environment:"
	python3 -V
	python3 -m site

.PHONY: python-install
python-install:             ## Install Python requirements in dev mode.
	@echo "Don't forget to run 'make virtualenv' if you got errors."
	python3 -m pip install -e .[test]

.PHONY: python-format
python-format:              ## Format Python scripts using black & isort.
	python3 -m isort -l 119 scripts/
	python3 -m black -l 119 scripts/

.PHONY: python-lint
python-lint:                ## Run pep8, black, mypy linters on Python scripts.
	python3 -m flake8 scripts/
	python3 -m black -l 119 --check scripts/
	python3 -m mypy --ignore-missing-imports scripts/
	python3 -m pylint ./scripts/**

## -----CLIENT GENERATION----------

.PHONY: client-python
client-python:              ## Generate openapi-generator Python client into python-client folder
client-python: bundle expand-yaml-parsing
	rm -rf python-client
	mkdir python-client
	node_modules/@openapitools/openapi-generator-cli/main.js generate \
		--input-spec bundle.yaml \
		--generator-name python \
		--output python-client \
		--git-host github.com \
		--git-repo-id YOUR-GENERATED-CLIENT-REPO \
		--git-user-id YOUR-USERNAME-OR-GITHUB-ORG

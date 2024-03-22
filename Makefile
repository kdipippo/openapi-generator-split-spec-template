.PHONY: help
help:                       ## Show the help.
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@fgrep "##" Makefile | fgrep -v fgrep


.PHONY: bundle
bundle:                     ## Use @redocly/cli to bundle the split YAML OpenAPI spec to one YAML file
	rm bundle.yaml
	node_modules/@redocly/cli/bin/cli.js bundle spec/openapi.yaml -o bundle.yaml --keep-url-references

.PHONY: clean
clean:                      ## Remove temporary generated files
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
	node_modules/@openapitools/openapi-generator-cli/main.js validate -i spec/openapi.yaml --recommend

.PHONY: validate-yamllint
validate-yamllint:          ## Display linting results from yamllint
	python3 -m yamllint -c lint/ruleset-yamllint.yaml spec

.PHONY: validate-redocly
validate-redocly: bundle    ## Display linting results from @redocly/cli
	node_modules/@redocly/cli/bin/cli.js lint bundle.yaml --config=lint/ruleset-redocly.yaml --format=stylish

## -----CLIENT GENERATION----------

.PHONY: python
python:                     ## Generate openapi-generator Python client into python-client folder
python: bundle expand-yaml-parsing
	rm -rf python-client
	mkdir python-client
	node_modules/@openapitools/openapi-generator-cli/main.js generate -i bundle.yaml -g python -o python-client

.PHONY: plantuml
plantuml: validate-redocly  ## Generate openapi-generator PlantUML client into plantuml-client folder
	rm -rf plantuml-client
	mkdir plantuml-client
	node_modules/@openapitools/openapi-generator-cli/main.js generate -i bundle.yaml -g plantuml -o plantuml-client

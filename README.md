# openapi-generator-starter-kit

OpenAPI Specification Template repo with features for generating clients and managing large OAS projects.

## Features:
- `paths` and elements in `components` split into separate files to more easily manage large OpenAPI Spec files.
- An assortment of `Makefile` commands for linting and bundling OAS files and creating clients via `openapi-generator`

```
Usage: make <target>

Targets:
help:                       ## Show the help.
bundle:                     ## Use @redocly/cli to bundle the split YAML OpenAPI spec to one YAML file
clean:                      ## Remove temporary generated files
expand-yaml-parsing:        ## Expand YAML parsing to maximum, to handle large bundled YAML file
html:                       ## Generate HTML page for vacuum's API spec linting report
html-open:                  ## Generate and open HTML page for vacuum's API spec linting report
## ---OPENAPI LINTING--------------
validate:                   ## Display linting results from all checks
validate-vacuum:            ## Display linting results from @quobix/vacuum
validate-openapi-generator: ## Display linting results from @openapitools/openapi-generator-cli
validate-yamllint:          ## Display linting results from yamllint
validate-redocly: bundle    ## Display linting results from @redocly/cli
## -----CLIENT GENERATION----------
python:                     ## Generate openapi-generator Python client into python-client folder
plantuml: validate-redocly  ## Generate openapi-generator PlantUML client into plantuml-client folder
```

## Getting Started

Run `npm install` to download all dependencies locally into `node_modules`.

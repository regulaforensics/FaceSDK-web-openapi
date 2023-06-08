target: all

all: validate build


build:
	npx redoc-cli bundle "$PWD/index.yml" --output facesdk-api-doc.html \ --options.maxDisplayedEnumValues=5 --options.theme.logo.gutter="20px" \ --options.theme.colors.primary.main="#8a53cb" --options.expandResponses="all" \ --options.expandSingleSchemaField --options.hideDownloadButton --options.jsonSampleExpandLevel="6"

validate:
	openapi-generator-cli validate -i index.yml
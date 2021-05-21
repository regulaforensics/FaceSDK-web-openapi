# Regula Face SDK OpenAPI definitions


## Clients

* [JavaScript](https://github.com/regulaforensics/FaceSDK-web-js-client) client for the browser and node.js based on axios
* [Java](https://github.com/regulaforensics/FaceSDK-web-java-client) client compatible with jvm and android
* [Python](https://github.com/regulaforensics/FaceSDK-web-python-client) 3.5+ client
* [C# (WORKS ONLY ON 3.0+ VERSION)](https://github.com/regulaforensics/FaceSDK-web-csharp-client) client for .NET & .NET Core

##  Scheme validation
```
docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli validate --recommend -i /local/index.yml 
```

## Generate html page
```bash
npx redoc-cli bundle "$PWD/index.yml" --output facesdk-static-doc.html \
--options.maxDisplayedEnumValues=5 --options.theme.logo.gutter="20px" \
--options.theme.colors.primary.main="#8a53cb" --options.expandResponses="all" \
--options.expandSingleSchemaField --options.hideDownloadButton --options.jsonSampleExpandLevel="6"
```
```

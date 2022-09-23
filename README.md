# Regula Face SDK OpenAPI definitions

## Clients

* [JavaScript](https://github.com/regulaforensics/FaceSDK-web-js-client) client for the browser and node.js based on axios
* [Java](https://github.com/regulaforensics/FaceSDK-web-java-client) client compatible with jvm and android
* [Python](https://github.com/regulaforensics/FaceSDK-web-python-client) 3.5+ client
* [C#](https://github.com/regulaforensics/FaceSDK-web-csharp-client) client for .NET & .NET Core


## Generate html page
```bash
npx redoc-cli build "$PWD/index.yml" --output facesdk-api-doc.html \
--options.maxDisplayedEnumValues=5 --options.theme.logo.gutter="20px" \
--options.theme.colors.primary.main="#8a53cb" --options.expandResponses="all" \
--options.expandSingleSchemaField --options.hideDownloadButton --options.jsonSampleExpandLevel="6"
```


## Updating clients according to the current spec

To update clients, use `update clients` GitHub action. Specify title PR and press run. For each client **PR** with changes will be created.

:warning: NOTE: Static typed clients, such as Java or C#, require adding all new **enums** to `update-models.sh` ENUM_MAPPINGS section.

:warning: NOTE: For some clients generator produces not-valid client code. See `update-models.sh` for ad-hocks fixing generator issues.   

:warning: NOTE: Do **not edit** generated code. Create wrappers, decorators, etc in ext folder.

# Regula Face SDK OpenAPI definitions

## Main GitHub repository

* [Download OpenAPI specification](https://github.com/regulaforensics/FaceSDK-web-openapi) 

## Clients

* [JavaScript](https://github.com/regulaforensics/FaceSDK-web-js-client) client for the browser and node.js based on axios
* [Java](https://github.com/regulaforensics/FaceSDK-web-java-client) client compatible with jvm and android
* [Python](https://github.com/regulaforensics/FaceSDK-web-python-client) 3.5+ client
* [C#](https://github.com/regulaforensics/FaceSDK-web-csharp-client) client for .NET & .NET Core

## Updating clients according to the current spec

When changes are added, the `update clients` action is automatically triggered. For each client **PR** with changes will be created.

:warning: NOTE: Before working with a client, read `dev.md` which is available in each client repository.

:warning: NOTE: Do **not edit** generated code. Create wrappers, decorators, etc. in ext folder.

##  Spec validation

```bash
docker run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli validate --recommend -i /local/index.yml
```

## Building Redoc single page html documentation

```bash
npx @redocly/cli build-docs index.yml -o=facesdk-api-doc.html
```

## Bundle scheme to single .json file

```bash
npx @openapitools/openapi-generator-cli generate -i index.yml -g openapi --skip-validate-spec
```

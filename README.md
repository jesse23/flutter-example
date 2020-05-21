![build and test](https://github.com/jesse23/flutter-example/workflows/build%20and%20test/badge.svg)
# few flutter
A minimal Electron application with flutter & dart

## To Use

```bash
npm i
npm start
npm run lint
npm test
```
 
## Release
To build for production, first run `npm run build`.

The output directory, `build` contains a `package.json` pointing to the built
application, and can be run as follows:

```bash
cd build
npm install
npm start
```
## Package
The output directory's package manifest, build/package.json, includes electron-packager, and therefore can be packaged for distribution on Windows, MacOS, and Linux.

to build for the host platform run:
``` 
npm run build
```
To build for all platforms, run :

``` 
npm run package
```
## About flutter

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
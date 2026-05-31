# Slate

This fork maintains the macOS app build, test, and release flow for Slate.

For original product background, configuration syntax, and historical documentation, see the upstream Slate repository and wiki:

- `https://github.com/jigish/slate`
- `https://github.com/jigish/slate/wiki`

## Prerequisites

- macOS with Xcode installed
- Xcode command line tools selected via `xcode-select`
- Ruby available for the release script
- Git submodules initialized for `script/create-dmg`

Initialize the DMG packaging helper once after cloning:

```sh
git submodule update --init --recursive
```

## Build

Build a local Debug app:

```sh
make build
```

Output:

```text
build/DerivedData/Build/Products/Debug/Slate.app
```

## Test

Run the full unit test suite:

```sh
make test
```

## Release

Create a local release DMG:

```sh
make release
```

`make release` packages the app and creates the DMG. Run `make test` first when you want a validated release build.

Output:

```text
build/Release/Slate.dmg
```

## Notes

- `make build` is for quick local iteration.
- `make release` is the shipping packaging path because it uses the existing release script and DMG flow.
- The project currently uses the shared `Slate` Xcode scheme for both build and test.

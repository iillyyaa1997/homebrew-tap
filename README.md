# homebrew-tap

Homebrew tap for [uZora](https://github.com/iillyyaa1997/u-zora) — a native
macOS menu-bar health & resource-hog monitor for Apple Silicon.

```sh
brew install --cask iillyyaa1997/tap/u-zora
brew upgrade  --cask u-zora
```

The cask (`Casks/u-zora.rb`) is kept up to date automatically by
[`.github/workflows/bump.yml`](.github/workflows/bump.yml), which tracks the
latest `u-zora` release — no personal access token required.

# Homebrew tap for Vibe

[Vibe](https://vibeplayer.app) is a native music player for macOS.

```bash
brew install cmicali/tap/vibe
```

`brew upgrade` picks up each new release. The cask is bumped by the Vibe
repo's `scripts/brew-set-version.sh`, which `make github-release` runs after
every stable release; betas are never published here.

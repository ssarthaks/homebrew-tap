# Homebrew tap: Sajilo Patro

**Sajilo Patro** (Nepali Calendar) by Sarthak Sharma: a free macOS menu bar Bikram Sambat (BS)
calendar with Government of Nepal holidays, festivals and tithi. Works offline.
[nepali-calendar.sarthaksharma.com.np](https://nepali-calendar.sarthaksharma.com.np/)

## Install

```bash
brew install --cask ssarthaks/tap/sajilo-patro
```

or, in two steps:

```bash
brew tap ssarthaks/tap
brew install --cask sajilo-patro
```

## Upgrade

```bash
brew update
brew upgrade --cask sajilo-patro
```

## Uninstall

```bash
brew uninstall --cask sajilo-patro
# also remove settings, the licence file and the login item:
brew uninstall --zap --cask sajilo-patro
```

## First launch

Releases are not yet signed with an Apple Developer ID or notarized by Apple, so macOS blocks the
first launch. Open **System Settings → Privacy & Security**, scroll to the message about
Sajilo Patro and click **Open Anyway**, then confirm. You only need to do this once per version.
Only do this for apps you trust and installed from this tap.

Requirements: macOS 11 Big Sur or later, on Apple Silicon or Intel.

`Casks/sajilo-patro.rb` is updated for every release.

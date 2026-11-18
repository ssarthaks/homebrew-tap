# Homebrew tap: Patrobar

**Patrobar** (Nepali Calendar) by Sarthak Sharma: a free macOS menu bar Bikram Sambat (BS)
calendar with Government of Nepal holidays, festivals and tithi. Works offline.
[nepali-calendar.sarthaksharma.com.np](https://nepali-calendar.sarthaksharma.com.np/)

## Install

```bash
brew install --cask ssarthaks/tap/patrobar
```

This taps `ssarthaks/tap` and, on Homebrew 7 or later, also trusts the `patrobar` cask (Homebrew
only loads casks from taps you trust). Use the full name above for the first install; after that the
short name `patrobar` works.

Patrobar was called Sajilo Patro before version 2.4.0. The old cask name `sajilo-patro` now points
to `patrobar` (`cask_renames.json`), so existing installs keep upgrading.

## Upgrade

```bash
brew update
brew upgrade --cask patrobar
```

## Uninstall

```bash
brew uninstall --cask patrobar
# also remove settings, the licence file and the login item:
brew uninstall --zap --cask patrobar
```

## First launch

Releases are not yet signed with an Apple Developer ID or notarized by Apple, so macOS blocks the
first launch. Open **System Settings → Privacy & Security**, scroll to the message about
Patrobar and click **Open Anyway**, then confirm. You only need to do this once per version.
Only do this for apps you trust and installed from this tap.

Requirements: macOS 11 Big Sur or later, on Apple Silicon or Intel.

`Casks/patrobar.rb` is updated for every release (automatically once the release workflow has its tap token).

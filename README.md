# Homebrew tap: Sarthak Labs

Official Homebrew tap for macOS applications built by [Sarthak Sharma](https://sarthaksharma.com.np/) under **Sarthak Labs**.

## Applications

### ClipBar — Clipboard Manager
Native Swift 6 menu bar clipboard manager with cursor-anchored quick access (`⇧⌘C`), `1.5s` hover preview, Full Library (`⌘L`), and local SQLite FTS5 search.  
[clipbar.sarthaksharma.com.np](https://clipbar.sarthaksharma.com.np/) · Requires macOS 14 Sonoma or later (Apple Silicon & Intel)

```bash
brew install --cask ssarthaks/tap/clipbar
```

### Patrobar — Nepali Calendar
Free, lightweight, offline menu bar Bikram Sambat (BS) calendar with Government of Nepal holidays, festivals, desktop widgets, and tithi.  
[patrobar.sarthaksharma.com.np](https://patrobar.sarthaksharma.com.np/) · Requires macOS 11 Big Sur or later (Apple Silicon & Intel)

```bash
brew install --cask ssarthaks/tap/patrobar
```

### MyDuck — Desktop Duck Buddy
Fun desktop duck buddy for macOS with first-launch picker (Shuba Duck, Yellow Duckling, or 3D White Duck), 2D screen roaming, and wall-bouncing throw physics.  
[github.com/ssarthaks/your-macos-duck](https://github.com/ssarthaks/your-macos-duck) · Requires macOS 14 Sonoma or later (Apple Silicon & Intel)

```bash
brew install --cask ssarthaks/tap/myduck
```

## Upgrade & Uninstall

```bash
brew update
brew upgrade --cask clipbar
brew upgrade --cask patrobar
brew upgrade --cask myduck

# Uninstall (add --zap to remove local settings & app data):
brew uninstall --cask clipbar
brew uninstall --zap --cask clipbar
```

## First launch

Releases are not yet signed with an Apple Developer ID or notarized by Apple, so macOS blocks the first launch. Open **System Settings → Privacy & Security**, scroll to the message about ClipBar or Patrobar, click **Open Anyway**, and confirm. You only need to do this once per version.

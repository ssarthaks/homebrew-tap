cask "passbar" do
  version "1.0.0"
  sha256 "2eb7259077271bdc4bb31d0b0c9f4bd6c9e68acba4554b11c205066f5f20cf9a"

  url "https://github.com/ssarthaks/passbar-dmg/releases/download/v#{version}/PassBar-#{version}.dmg"
  name "PassBar"
  desc "Offline-first, locally encrypted macOS menu bar password manager with Liquid Glass UI"
  homepage "https://passbar.sarthaksharma.com.np/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "PassBar.app"

  uninstall quit: "com.passbar.app"

  zap trash: [
    "~/Library/Application Support/PassBar",
    "~/Library/Preferences/com.passbar.app.plist",
  ]

  caveats <<~EOS
    PassBar is ad-hoc signed without an Apple Developer ID certificate yet.
    macOS may block the first launch. To allow it, open
      System Settings → Privacy & Security
    and click "Open Anyway" next to the PassBar message, then confirm.
    Only do this if you installed it from the official tap.
  EOS
end

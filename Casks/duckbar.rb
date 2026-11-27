cask "duckbar" do
  version "1.0.4"
  sha256 "b69f41b65cfacb5d662894720cf7b94753050a3b11d35ad6ede07b7c04bec08a"

  url "https://github.com/ssarthaks/your-macos-duck/releases/download/v#{version}/DuckBar-#{version}.dmg"
  name "DuckBar"
  desc "Chaotic desktop duck for macOS that walks anywhere, quacks, and bounces when thrown"
  homepage "https://github.com/ssarthaks/your-macos-duck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "DuckBar.app"

  uninstall quit: "io.github.ssarthaks.duckbar"

  zap trash: [
    "~/Library/Preferences/io.github.ssarthaks.duckbar.plist",
  ]

  caveats <<~EOS
    DuckBar is ad-hoc signed without an Apple Developer ID certificate yet.
    macOS may block the first launch. To allow it, open
      System Settings → Privacy & Security
    and click "Open Anyway" next to the DuckBar message, then confirm.
    Only do this if you installed it from the official tap.
  EOS
end

cask "myduck" do
  version "1.0.8"
  sha256 "b4e1251c9fa30240c6a00c5e253b62dd8409650207310dc3a3e78d42cca47817"

  url "https://github.com/ssarthaks/your-macos-duck/releases/download/v#{version}/MyDuck-#{version}.dmg"
  name "MyDuck"
  desc "Fun desktop duck buddy that walks anywhere, quacks, and bounces when thrown"
  homepage "https://github.com/ssarthaks/your-macos-duck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MyDuck.app"

  uninstall quit: "io.github.ssarthaks.myduck"

  zap trash: [
    "~/Library/Preferences/io.github.ssarthaks.duckbar.plist",
    "~/Library/Preferences/io.github.ssarthaks.myduck.plist",
  ]

  caveats <<~EOS
    MyDuck is ad-hoc signed without an Apple Developer ID certificate yet.
    macOS may block the first launch. To allow it, open
      System Settings → Privacy & Security
    and click "Open Anyway" next to the MyDuck message, then confirm.
    Only do this if you installed it from the official tap.
  EOS
end

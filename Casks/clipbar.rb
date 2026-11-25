cask "clipbar" do
  version "1.0.0"
  sha256 "587427ddc4a06d38e60e5b91ac00db845826535ba742a4d08c12f15613488701"

  url "https://github.com/ssarthaks/clipbar-dmg/releases/download/v#{version}/ClipBar-#{version}.dmg"
  name "ClipBar"
  desc "Fast, local-first menu bar clipboard manager with cursor quick access"
  homepage "https://clipbar.sarthaksharma.com.np/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClipBar.app"

  uninstall quit: "com.clipbar.app"

  zap trash: [
    "~/Library/Application Support/ClipBar",
    "~/Library/Preferences/com.clipbar.app.plist",
  ]

  caveats <<~EOS
    ClipBar is not signed with an Apple Developer ID or notarized yet.
    macOS will block the first launch. To allow it, open
      System Settings → Privacy & Security
    and click "Open Anyway" next to the ClipBar message, then confirm.
    Only do this if you installed it from the official tap.
  EOS
end

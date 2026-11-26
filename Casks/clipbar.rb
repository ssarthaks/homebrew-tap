cask "clipbar" do
  version "1.1.1"
  sha256 "ec01096f1e5d301ed9a7804a0d89b4e81ef63937155a9ea417d912463f5ab542"

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

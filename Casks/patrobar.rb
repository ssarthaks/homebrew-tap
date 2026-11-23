cask "patrobar" do
  version "3.0.0"
  sha256 "d047ee656d2b69d934dbaab24f9faaf53f2d43af1dc5704d724ba4e219aeaa40"

  url "https://github.com/ssarthaks/nepali-calendar-dmg/releases/download/desktop-v#{version}/Patrobar-#{version}.dmg"
  name "Patrobar"
  name "Nepali Calendar"
  desc "Menu bar Bikram Sambat calendar with Nepali holidays"
  homepage "https://patrobar.sarthaksharma.com.np/"

  livecheck do
    url :url
    regex(/^desktop-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  # The app updates itself (Settings → About), so Homebrew does not upgrade it behind its back.
  auto_updates true
  # macOS 11 Big Sur or later (tauri.conf.json), which is also Homebrew's own minimum.
  depends_on :macos

  app "Patrobar.app"

  # macOS 13+ registers "Open at login" with SMAppService, which macOS removes with the app.
  uninstall quit: "np.com.sarthaksharma.sajilopatro"

  zap trash: [
    "~/Library/Application Support/np.com.sarthaksharma.sajilopatro",
    "~/Library/Caches/np.com.sarthaksharma.sajilopatro",
    "~/Library/Preferences/np.com.sarthaksharma.sajilopatro.plist",
    "~/Library/WebKit/np.com.sarthaksharma.sajilopatro",
  ]

  caveats <<~EOS
    Patrobar is not signed with an Apple Developer ID or notarized yet.
    macOS will block the first launch. To allow it, open
      System Settings → Privacy & Security
    and click "Open Anyway" next to the Patrobar message, then confirm.
    Only do this if you installed it from the official tap.
  EOS
end

cask "patrobar" do
  version "2.4.0"
  sha256 "2991bd1a54ac62a4265c5ac8cb331ce1242f0ee247df0a168119641f1bf24392"

  url "https://github.com/ssarthaks/nepali-calendar-dmg/releases/download/desktop-v#{version}/Patrobar-#{version}.dmg"
  name "Patrobar"
  name "Nepali Calendar"
  desc "Menu bar Bikram Sambat calendar with Nepali holidays"
  homepage "https://nepali-calendar.sarthaksharma.com.np/"

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
  # macOS 11-12 use a LaunchAgent labelled "Sajilo Patro" (the app's name before 2.4.0; the label is
  # kept so existing login items keep working).
  uninstall launchctl: "Sajilo Patro",
            quit:      "np.com.sarthaksharma.sajilopatro"

  zap trash: [
    "~/Library/Application Support/np.com.sarthaksharma.sajilopatro",
    "~/Library/Caches/np.com.sarthaksharma.sajilopatro",
    "~/Library/LaunchAgents/Sajilo Patro.plist",
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

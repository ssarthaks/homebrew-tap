cask "sajilo-patro" do
  version "1.2.2"
  sha256 "43c03329acdcc4c88f0525f789bf35e723b2e0febda4cae6c253c26bb42bcf44"

  url "https://github.com/ssarthaks/nepali-calendar-dmg/releases/download/desktop-v#{version}/SajiloPatro-#{version}.dmg"
  name "Sajilo Patro"
  name "Nepali Calendar"
  desc "Menu bar Bikram Sambat calendar with Nepali holidays"
  homepage "https://nepali-calendar.sarthaksharma.com.np/"

  livecheck do
    url :url
    regex(/^desktop-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  # macOS 11 Big Sur or later (tauri.conf.json), which is also Homebrew's own minimum.
  depends_on :macos

  app "Sajilo Patro.app"

  # macOS 13+ registers "Open at login" with SMAppService, which macOS removes with the app.
  # macOS 11-12 use a LaunchAgent labelled "Sajilo Patro".
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
    Sajilo Patro is not signed with an Apple Developer ID or notarized yet.
    macOS will block the first launch. To allow it, open
      System Settings → Privacy & Security
    and click "Open Anyway" next to the Sajilo Patro message, then confirm.
    Only do this if you installed it from the official tap.
  EOS
end

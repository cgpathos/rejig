cask "rejig" do
  version "1.2.0"
  sha256 "be9c0eda014e14d47394d8a8fa491cca473393fb058424dad868cbc6bf458fd6"

  url "https://github.com/cgpathos/rejig/releases/download/v#{version}/Rejig-#{version}.dmg"
  name "Rejig"
  desc "Keyboard-driven window manager for macOS"
  homepage "https://github.com/cgpathos/rejig"

  auto_updates true
  depends_on macos: :sonoma

  app "Rejig.app"

  zap trash: [
    "~/Library/Preferences/today.pathos.rejig.plist",
  ]
end

cask "rejig" do
  version "1.1.0"
  sha256 "9054e4f206b82ee9e10f77a86252d2d4b08df1b6f7ffb09b7a370827886713d4"

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

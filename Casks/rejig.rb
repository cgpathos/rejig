cask "rejig" do
  version "1.0.2"
  sha256 "cb43ccac5e1484395192c3a5d7c1dfae3af38f73dbe4c46b388abbfe5d67db6e"

  url "https://github.com/cgpathos/rejig/releases/download/v#{version}/Rejig-#{version}.dmg"
  name "Rejig"
  desc "Keyboard-driven window manager for macOS"
  homepage "https://github.com/cgpathos/rejig"

  depends_on macos: :sonoma

  app "Rejig.app"

  zap trash: [
    "~/Library/Preferences/today.pathos.rejig.plist",
  ]
end

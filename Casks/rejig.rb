cask "rejig" do
  version "1.0.0"
  sha256 "b4ed98de3f45d018713c8ccf132d9c456a1776184666d9d2d38e14f298ef62df"

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

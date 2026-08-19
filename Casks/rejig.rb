cask "rejig" do
  version "1.0.1"
  sha256 "8960030a4f8ad5cda6f27698b8eb3818ce65b54112fdcaae6409e1ec40ca51f4"

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

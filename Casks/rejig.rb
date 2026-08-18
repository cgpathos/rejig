cask "rejig" do
  version "1.0.0"
  sha256 "1e4b130f82b50af28af1fd0c88b3302cf14035cd4e52c352cb52d7c7f84f2cc8"

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

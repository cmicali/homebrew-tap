cask "vibe" do
  arch arm: "arm64", intel: "universal"

  version "1.15"
  sha256 arm:   "746bfd046f8f83a73d499af71011f565d5974e98965ac6876ef474a338fdf401",
         intel: "5d0233690b4e22e3faa8deaa9ef88e91dc2edf830ba8afc91db6c0a37e96f21b"

  url "https://github.com/cmicali/vibe/releases/download/v#{version}/Vibe-macOS-#{arch}-#{version}.dmg"
  name "Vibe"
  desc "Native music player"
  homepage "https://vibeplayer.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Vibe.app"

  zap trash: [
    "~/Library/Application Scripts/com.commonwealthrecordings.Vibe",
    "~/Library/Containers/com.commonwealthrecordings.Vibe",
    "~/Library/Group Containers/4UEV752JH4.com.commonwealthrecordings.Vibe",
  ]
end

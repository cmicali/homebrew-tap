cask "vibe" do
  arch arm: "arm64", intel: "universal"

  version "1.14"
  sha256 arm:   "5b0d88da19794cbc6a57ab099a8cf98087f6cfcbbf5eedef43088ecc6de2692f",
         intel: "8fd0990bf21135ddc4d4c10f3a7ace24297be8b7d3390cb251f2565f3cb58a19"

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

cask "vibe" do
  arch arm: "arm64", intel: "universal"

  version "1.17"
  sha256 arm:   "be920b3a4268758b4a5e85b7973dae3912e76c04402a48f78436f6db1e9d583b",
         intel: "783f7f579e314bca2b666b4d1e00eecf6132baa2669d432db1251e78d6c37104"

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

cask "vibe" do
  arch arm: "arm64", intel: "universal"

  version "1.16"
  sha256 arm:   "c06a2362f3a253282d5539efe54c2a1e0fa1886de57c1b2e7f5eb7578e2f690b",
         intel: "d7aafdd4f7eca57ac11ec27e5650f72f57795f3922c6aa838496fa08d33ab913"

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

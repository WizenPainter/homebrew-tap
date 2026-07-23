cask "shuffle" do
  version "0.2.7"
  sha256 "b184d6bda5573f26c5a751cb82a6ae3c99a90ac4d890c08e74fe6d42adab8f67"

  url "https://github.com/WizenPainter/shuffle/releases/download/v#{version}/Shuffle-#{version}.dmg"
  name "Shuffle"
  desc "Fast, GPU-rendered file manager and Finder alternative"
  homepage "https://shuffleapp.co/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Shuffle.app"

  zap trash: [
    "~/Library/Application Support/Shuffle",
    "~/Library/Preferences/com.shuffle.app.plist",
    "~/Library/Saved Application State/com.shuffle.app.savedState",
  ]
end

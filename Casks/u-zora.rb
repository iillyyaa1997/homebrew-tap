# uZora — menu-bar health & resource-hog monitor for Apple Silicon Macs.
# https://github.com/iillyyaa1997/u-zora
#
# `version` + `sha256` are kept current by .github/workflows/bump.yml,
# which pulls the latest u-zora GitHub release (no cross-repo token).
cask "u-zora" do
  version "0.1.1"
  sha256 "7796a1d7eb87489fa5226d119b14f21973923380c44bf4b6ecd1b94c077dc959"

  url "https://github.com/iillyyaa1997/u-zora/releases/download/v#{version}/uZora-v#{version}.dmg"
  name "uZora"
  desc "Menu-bar health and resource-hog monitor for Apple Silicon Macs"
  homepage "https://github.com/iillyyaa1997/u-zora"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch:  :arm64
  depends_on macos: ">= :tahoe"

  app "uZora.app"

  zap trash: [
    "~/Library/Application Support/uZora",
    "~/Library/Caches/place.unicorns.uzora",
    "~/Library/HTTPStorages/place.unicorns.uzora",
    "~/Library/Preferences/place.unicorns.uzora.plist",
  ]
end

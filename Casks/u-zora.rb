# uZora — menu-bar health & resource-hog monitor for Apple Silicon Macs.
# https://github.com/iillyyaa1997/u-zora
#
# `version` + `sha256` are kept current by .github/workflows/bump.yml,
# which pulls the latest u-zora GitHub release (no cross-repo token).
cask "u-zora" do
  version "0.2.0"
  sha256 "e1efb3a04552cf5ced265dc55278d51cd74a497474147f54184870aca3021269"

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

# uZora — menu-bar health & resource-hog monitor for Apple Silicon Macs.
# https://github.com/iillyyaa1997/u-zora
#
# `version` + `sha256` are kept current by .github/workflows/bump.yml,
# which pulls the latest u-zora GitHub release (no cross-repo token).
cask "u-zora" do
  version "0.1.0"
  sha256 "01ccc1e128dcc37ce360c9384b7dbc1a6682edb7e002f7671e84975cc603ebbd"

  url "https://github.com/iillyyaa1997/u-zora/releases/download/v#{version}/uZora-v#{version}.dmg",
      verified: "github.com/iillyyaa1997/u-zora/"
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

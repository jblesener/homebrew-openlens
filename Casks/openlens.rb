cask "openlens" do
  version "6.0.0"

  sha256 "b61b1626710c455ecd78ea3fc14291e95a03d7891ce932a78707da7bd4401d29"

  url "https://github.com/ykursadkaya/homebrew-openlens/releases/download/v#{version}/OpenLens-#{version}.zip"
  name "Open Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://raw.githubusercontent.com/ykursadkaya/homebrew-openlens/main/version"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)/)
  end

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Caches/OpenLens",
    "~/Library/Logs/OpenLens",
    "~/Library/Preferences/com.electron.open-lens.plist",
    "~/Library/Saved Application State/com.electron.open-lens.savedState",
  ]
end

cask "storenor" do
  version "1.0.0"
  sha256 "7d34228e7c59b74e91f470d6a280289bab48c3d9277724a84d50ef8d8fe17e0f"

  url "https://storenor.de/download/Storenor-#{version}.dmg"
  name "Storenor"
  desc "Show App Store product pages as delivered per device, storefront and language"
  homepage "https://storenor.de/"

  livecheck do
    url "https://storenor.de/download/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :sonoma

  app "Storenor.app"

  zap trash: [
    "~/Library/Preferences/de.thoand.storenor.plist",
    "~/Library/Saved Application State/de.thoand.storenor.savedState",
  ]
end

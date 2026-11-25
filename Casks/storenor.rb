cask "storenor" do
  version "1.1.1"
  sha256 "6fc1c351b9a4a77261d44558beb5e2b41debc7078a7b26f2df3fe99b5c9b76d3"

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

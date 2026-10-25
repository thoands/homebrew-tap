cask "storenor" do
  version "1.1.0"
  sha256 "1012434a0261b7a766545ae9ea63562299c6fd0b0fa4a21f1e05c3ee2f3f36f0"

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

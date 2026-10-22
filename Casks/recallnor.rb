cask "recallnor" do
  version "1.0.0"
  sha256 "b0d9ebbea429fbc81679c412805d19043e02a831542d3223dc36663a34794dfc"

  url "https://recallnor.com/download/Recallnor-#{version}.dmg"
  name "Recallnor"
  desc "Search, favourite and hand over your Claude Code chat history"
  homepage "https://recallnor.com/"

  livecheck do
    url "https://recallnor.com/download/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :sonoma

  app "Recallnor.app"

  # Bewusst ohne Application Support: dort liegt das Archiv der Chats, das nicht mitgelöscht werden soll.
  zap trash: [
    "~/Library/Preferences/de.thoand.recallnor.plist",
    "~/Library/Saved Application State/de.thoand.recallnor.savedState",
  ]
end

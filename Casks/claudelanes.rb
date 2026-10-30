cask "claudelanes" do
  version "0.1.1"
  sha256 "07089beea3b7475d926883da7761fa416ef5d5907a390de11efcb53993533241"

  url "https://github.com/XexusCode/claudelanes/releases/download/v#{version}/ClaudeLanes-#{version}.zip"
  name "ClaudeLanes"
  desc "Run several Claude desktop accounts side by side (unofficial)"
  homepage "https://github.com/XexusCode/claudelanes"

  depends_on macos: ">= :sonoma"

  app "ClaudeLanes.app"

  uninstall quit: "io.github.xexuscode.claudelanes"

  zap trash: [
    "~/Applications/ClaudeLanes",
    "~/Library/Application Support/ClaudeLanes",
    "~/Library/Preferences/io.github.xexuscode.claudelanes.plist",
  ]

  caveats <<~EOS
    ClaudeLanes is not notarized by Apple. The first time you open it, macOS blocks it:
    go to System Settings → Privacy & Security and click "Open Anyway".
  EOS
end

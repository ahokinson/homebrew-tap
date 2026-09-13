cask "zen" do
  version "1.22.1b"
  sha256 "3904a67a3851b1a619e2d3fa7a70835a1d7e4367ad30931ccf9b4d23292af990"

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen.macos-universal.dmg",
      verified: "github.com/zen-browser/desktop/"
  name "Zen Browser"
  desc "Customizable web browser built on Firefox"
  homepage "https://zen-browser.app/"

  livecheck do
    url "https://updates.zen-browser.app/updates/browser/Darwin_aarch64-gcc3/release/update.xml"
    strategy :xml do |xml|
      xml.get_elements("//update").map { |item| item.attributes["appVersion"] }
    end
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask/zen",
    "zen-privacy",
  ]
  depends_on arch: :arm64
  depends_on :macos

  app "Zen.app"
  binary "#{appdir}/Zen.app/Contents/MacOS/zen"

  uninstall quit: "app.zen-browser.zen"

  zap trash: [
        "~/Library/Application Support/Zen",
        "~/Library/Caches/Mozilla/updates/Applications/Zen Browser",
        "~/Library/Caches/Mozilla/updates/Applications/Zen",
        "~/Library/Caches/Zen",
        "~/Library/Preferences/app.zen-browser.zen.plist",
        "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
        "~/Library/Saved Application State/app.zen-browser.zen.savedState",
        "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end

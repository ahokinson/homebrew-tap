cask "hermes" do
  version "2026.6.19"
  sha256 "b61e047efe3059faf1c55fec3252e661f2d2a993a7a3eebf5cc6a9aa5c1790f5"

  url "https://hermes-assets.nousresearch.com/Hermes-Setup.dmg",
      verified: "hermes-assets.nousresearch.com/"
  name "Hermes"
  desc "Open-source AI agent with persistent memory and web browsing"
  homepage "https://hermes-agent.nousresearch.com/"

  livecheck do
    url "https://github.com/NousResearch/hermes-agent"
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Hermes.app"

  uninstall quit: "com.nousresearch.hermes.setup"

  zap trash: [
    "~/.hermes",
    "~/Library/Application Support/com.nousresearch.hermes.setup",
    "~/Library/Caches/com.nousresearch.hermes.setup",
    "~/Library/Preferences/com.nousresearch.hermes.setup.plist",
    "~/Library/Saved Application State/com.nousresearch.hermes.setup.savedState",
  ]
end

cask "codex" do
  version "0.144.4"
  sha256 "77c8969a481302f9db1d9ea2a6c21c083abae3f1a8fc8a7275dc38323699391e"

  url "https://github.com/openai/codex/releases/download/rust-v#{version}/codex-aarch64-apple-darwin.tar.gz",
      verified: "github.com/openai/codex/"
  name "Codex"
  desc "OpenAI's agentic coding assistant for the terminal"
  homepage "https://openai.com/codex/"

  livecheck do
    url :url
    regex(/^rust[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  conflicts_with cask: "homebrew/cask/codex"
  depends_on formula: "ripgrep"
  depends_on arch: :arm64
  depends_on :macos

  binary "codex-aarch64-apple-darwin", target: "codex"

  generate_completions_from_executable "codex-aarch64-apple-darwin", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end

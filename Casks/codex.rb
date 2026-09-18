cask "codex" do
  version "0.155.0"
  sha256 "5a584b7cddc2a97083cada53f10f5bc4231526b7f64105f6a5bb82d01ccdba49"

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
  depends_on arch: :arm64
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "codex-aarch64-apple-darwin", target: "codex"
  generate_completions_from_executable "codex-aarch64-apple-darwin", "completion", base_name: "codex"

  zap rmdir: "~/.codex"
end

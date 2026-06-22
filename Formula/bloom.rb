class Bloom < Formula
  desc "Grow tmux sessions from a single config file"
  homepage "https://github.com/ahokinson/bloom"
  url "https://github.com/ahokinson/bloom/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "860310c2edf4a42d0a1b6cda58cdb59e8943ab1a2e1a6a94537ffff180ac2fcd"
  license "MIT"
  head "https://github.com/ahokinson/bloom.git", branch: "develop"

  depends_on "go" => :build
  depends_on "tmux"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/bloom"
  end

  test do
    assert_match "does not exist",
      shell_output("#{bin}/bloom /nonexistent/path", 1)
  end
end

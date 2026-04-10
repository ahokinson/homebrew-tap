class Bloom < Formula
  desc "Grow tmux sessions from a single config file"
  homepage "https://github.com/ahokinson/bloom"
  head "https://github.com/ahokinson/bloom.git", branch: "develop"
  license "MIT"

  depends_on "go" => :build
  depends_on "tmux"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/bloom"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bloom --version")
  end
end

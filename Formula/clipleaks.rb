class Clipleaks < Formula
  desc "Catches secrets on your clipboard before they escape"
  homepage "https://github.com/ahokinson/clipleaks"
  url "https://github.com/ahokinson/clipleaks/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7794cdfe6260f1f1a41d858e3aef84c29bc3d91776da62decea5cbcb8d42dfb1"
  license "MIT"
  head "https://github.com/ahokinson/clipleaks.git", branch: "develop"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=HEAD
      -X main.date=#{time.iso8601}
      -X main.builtBy=homebrew
    ]
    system "go", "build", *std_go_args(ldflags:), "./cmd/clipleaks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clipleaks --version")
  end
end

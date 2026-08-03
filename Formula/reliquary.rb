class Reliquary < Formula
  desc "Store secrets in your OS keyring and load them into your shell env on startup"
  homepage "https://github.com/ahokinson/reliquary"
  url "https://github.com/ahokinson/reliquary/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "5ed4ba87b18c453695c38157a74f8cdece8f17411e5bdba462bb7c5e07949260"
  license "MIT"
  head "https://github.com/ahokinson/reliquary.git", branch: "develop"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "No secrets configured yet",
      shell_output("#{bin}/reliquary list")
  end
end

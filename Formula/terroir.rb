class Terroir < Formula
  desc "Cultivate dev work across branches, tickets, and editors"
  homepage "https://github.com/ahokinson/terroir"
  head "https://github.com/ahokinson/terroir.git", branch: "develop"
  license "MIT"

  depends_on "bun" => :build

  def install
    system "bun", "install"
    system "bun", "run", "build.ts"
    libexec.install Dir["bin/*"]
    bin.install_symlink libexec/"terroir"
  end

  test do
    assert_match "terroir", shell_output("#{bin}/terroir --version")
  end
end

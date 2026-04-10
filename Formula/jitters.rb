class Jitters < Formula
  desc "Keep tabs on your AI coding assistant spend"
  homepage "https://github.com/ahokinson/jitters"
  head "https://github.com/ahokinson/jitters.git", branch: "develop"
  license "MIT"

  depends_on "bun" => :build

  def install
    system "bun", "install"
    system "bun", "run", "build.ts"
    libexec.install Dir["bin/*"]
    bin.install_symlink libexec/"jitters"
  end

  test do
    assert_match "jitters", shell_output("#{bin}/jitters --version")
  end
end

cask "cupcake" do
  version "0.5.1"
  sha256 "de06f98f8916517a1f979123439abde431dbbefbfdeb9118321a651a6d9394db"

  url "https://github.com/eqtylab/cupcake/releases/download/v#{version}/cupcake-v#{version}-aarch64-apple-darwin.tar.gz",
      verified: "github.com/eqtylab/cupcake/"
  name "Cupcake"
  desc "Native policy enforcement layer for AI coding agents (OPA/Rego)"
  homepage "https://cupcake.eqtylab.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  # cupcake shells out to opa to compile/evaluate Rego policies. The release
  # tarball also bundles its own opa (bin/opa), but we install the brew formula
  # instead and expose only the cupcake binary to avoid a conflicting opa.
  depends_on formula: "opa"
  depends_on arch: :arm64
  depends_on :macos

  binary "cupcake-v#{version}-aarch64-apple-darwin/bin/cupcake", target: "cupcake"

  zap trash: "~/.config/cupcake"
end

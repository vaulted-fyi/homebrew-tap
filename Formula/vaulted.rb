class Vaulted < Formula
  desc "Zero-knowledge encrypted secret sharing from the command line"
  homepage "https://www.vaulted.fyi"
  url "https://registry.npmjs.org/vaulted-cli/-/vaulted-cli-1.0.1.tgz"
  sha256 "7297bf5cbff49d823b6e04bb9220375712480f0bad681df77386b930288fc285"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "vaulted", shell_output("#{bin}/vaulted --help")
  end
end

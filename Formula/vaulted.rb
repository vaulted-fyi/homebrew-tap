class Vaulted < Formula
  desc "Zero-knowledge encrypted secret sharing from the command line"
  homepage "https://www.vaulted.fyi"
  url "https://registry.npmjs.org/vaulted-cli/-/vaulted-cli-2.0.0.tgz"
  sha256 "9b907efccc8cff694a69828029c9576d99efb4eb0897423a0b45cf6a7e2a1010"
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

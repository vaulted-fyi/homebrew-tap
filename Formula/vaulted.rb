class Vaulted < Formula
  desc "Zero-knowledge encrypted secret sharing from the command line"
  homepage "https://www.vaulted.fyi"
  url "https://registry.npmjs.org/vaulted-cli/-/vaulted-cli-1.1.0.tgz"
  sha256 "7cdec187dc69de1c5926e08c31aa9a674b7305b2080bd68ba25db8af3a284ac6"
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

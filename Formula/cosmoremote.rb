class Cosmoremote < Formula
  desc "Control Claude Code and Codex on your Mac from your phone"
  homepage "https://github.com/matheusjkweber/cosmoremote"
  url "https://registry.npmjs.org/cosmoremote/-/cosmoremote-2.0.20.tgz"
  sha256 "60aa307537c02e9f244ca386101f55dd872ec8eb97ef0d24810eb93b0f8d30f4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      To start the bridge daemon, run:
        cosmoremote start

      Then scan the QR code with the CosmoRemote app on your phone.
    EOS
  end

  test do
    assert_match "cosmoremote", shell_output("#{bin}/cosmoremote --help")
  end
end

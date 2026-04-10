class Cosmoremote < Formula
  desc "Control Claude Code and Codex on your Mac from your phone"
  homepage "https://github.com/matheusjkweber/cosmoremote"
  url "https://registry.npmjs.org/cosmoremote/-/cosmoremote-1.0.33.tgz"
  sha256 "899a1750e88add644c941aef76a3efd73c114063cc63aa658dc62b0cb2b68998"
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

class Cosmoremote < Formula
  desc "Control Claude Code and Codex on your Mac from your phone"
  homepage "https://github.com/matheusjkweber/cosmoremote"
  url "https://registry.npmjs.org/cosmoremote/-/cosmoremote-2.0.5.tgz"
  sha256 "a40e52ed001a1e4f5192efcc464d316c1ed95894ac94516e933307ea1e341465"
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

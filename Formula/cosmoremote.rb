class Cosmoremote < Formula
  desc "Control Claude Code and Codex on your Mac from your phone"
  homepage "https://github.com/matheusjkweber/cosmoremote"
  url "https://registry.npmjs.org/cosmoremote/-/cosmoremote-2.0.14.tgz"
  sha256 "565e281ae59f6eae1ebd6c03787763faa0c36cce0c6496df52158628da626cd1"
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

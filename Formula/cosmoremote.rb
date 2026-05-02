class Cosmoremote < Formula
  desc "Control Claude Code and Codex on your Mac from your phone"
  homepage "https://github.com/matheusjkweber/cosmoremote"
  url "https://registry.npmjs.org/cosmoremote/-/cosmoremote-2.0.2.tgz"
  sha256 "511fc181b099257fe4647734a7e7a2434ce61218146aef6857e3c62cbe1b791e"
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

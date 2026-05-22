class Tanya < Formula
  desc "Live, tool-using AI CLI for DeepSeek and OpenAI-compatible providers"
  homepage "https://github.com/matheusjkweber/tanya"
  url "https://registry.npmjs.org/@matheuskrumenauer/tanya/-/tanya-0.17.0.tgz"
  sha256 "8ad793679fb476cb25719b807f803b17aecf812a1502a00b6242836cc1f14891"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_path_exists bin/"tanya"
    assert_path_exists bin/"tania"
  end
end

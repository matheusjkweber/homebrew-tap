class Tanya < Formula
  desc "Live, tool-using AI CLI for DeepSeek and OpenAI-compatible providers"
  homepage "https://github.com/matheusjkweber/tanya"
  url "https://registry.npmjs.org/@matheuskrumenauer/tanya/-/tanya-0.17.12.tgz"
  sha256 "eeac9f1c32e8f5880a9029a6b2bf21dea38fef6e107d5289aea72cd80612f8ab"
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

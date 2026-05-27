class Tanya < Formula
  desc "Live, tool-using AI CLI for DeepSeek and OpenAI-compatible providers"
  homepage "https://github.com/matheusjkweber/tanya"
  url "https://registry.npmjs.org/@matheuskrumenauer/tanya/-/tanya-0.17.6.tgz"
  sha256 "f72586e48048ab23726838af84db7c97e3e45a311f44c516845eb63722e9a712"
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

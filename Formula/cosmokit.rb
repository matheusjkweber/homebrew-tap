class Cosmokit < Formula
  desc "Drive the iOS Simulator from the command line"
  homepage "https://github.com/maththedev42/cosmokit-cli"
  url "https://github.com/maththedev42/cosmokit-cli/releases/download/v0.1.0/cosmokit-0.1.0-macos-universal.tar.gz"
  sha256 "15aad3cfe4400599aa124a42eaa229d4801aa3c349389df1568c83279a365996"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cosmokit"
  end

  def caveats
    <<~EOS
      cosmokit shells out to `xcrun simctl`, so it needs Xcode's command line
      tools installed to do anything useful:

        xcode-select --install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cosmokit version")
  end
end

class EtcherCli < Formula
  desc "Flash OS images to SD cards & USB drives from the command-line"
  homepage "https://etcher.io"
  url "https://github.com/resin-io/etcher/releases/download/v1.4.4/etcher-cli-1.4.4-darwin-x64.tar.gz"
  sha256 "889de471078f2ceb213cb3b83a3ea9edf1c96c193e53e500eb3487e33d591131"

  def install
    bin.install "etcher"
    prefix.install "node_modules"
  end

  test do
    assert_match "1.4.4", shell_output("#{bin}/etcher -v")
  end
end

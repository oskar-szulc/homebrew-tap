class Periscope < Formula
  desc "Headless Safari-engine browser CLI for agents"
  homepage "https://github.com/oskar-szulc/periscope"
  url "https://github.com/oskar-szulc/periscope/releases/download/v0.2.0/periscope-0.2.0-macos.tar.gz"
  sha256 "22de44ca9421c0b08ada77174918495c28174370e63813d5d1407932111b8ea5"
  license "MIT"

  depends_on macos: :tahoe

  def install
    bin.install "periscope"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/periscope --version")
  end
end

class Periscope < Formula
  desc "Headless Safari-engine browser CLI for agents"
  homepage "https://github.com/oskar-szulc/periscope"
  url "https://github.com/oskar-szulc/periscope/releases/download/v0.2.2/periscope-0.2.2-macos.tar.gz"
  sha256 "95c9fe6067a9b3ad5a955dcc021e0f0125d44e91b2efe71171fe7d2d761592da"
  license "MIT"

  depends_on macos: :tahoe

  def install
    bin.install "periscope"
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/periscope --version")
  end
end

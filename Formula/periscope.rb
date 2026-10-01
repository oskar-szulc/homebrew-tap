class Periscope < Formula
  desc "Headless Safari-engine browser CLI for agents"
  homepage "https://github.com/oskar-szulc/periscope"
  url "https://github.com/oskar-szulc/periscope/releases/download/v0.2.4/periscope-0.2.4-macos.tar.gz"
  sha256 "86e2bd17561e2db940ad33b54612f15e3a2c58aae17b4fede8ce6bae8868beab"
  license "MIT"

  depends_on macos: :tahoe

  def install
    bin.install "periscope"
  end

  test do
    assert_match "0.2.4", shell_output("#{bin}/periscope --version")
  end
end

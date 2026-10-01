class Periscope < Formula
  desc "Headless Safari-engine browser CLI for agents"
  homepage "https://github.com/oskar-szulc/periscope"
  url "https://github.com/oskar-szulc/periscope/releases/download/v0.2.5/periscope-0.2.5-macos.tar.gz"
  sha256 "0a99b2b54b1837afff491ef1c01ba7c08fc5652e0316e1f15138320ead6b451b"
  license "MIT"

  depends_on macos: :tahoe

  def install
    bin.install "periscope"
  end

  test do
    assert_match "0.2.5", shell_output("#{bin}/periscope --version")
  end
end

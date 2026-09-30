class Periscope < Formula
  desc "Headless Safari-engine browser CLI for agents"
  homepage "https://github.com/oskar-szulc/periscope"
  url "https://github.com/oskar-szulc/periscope/releases/download/v0.1.0/periscope-0.1.0-macos.tar.gz"
  sha256 "8f0763cfcb53c4a23011c42aece07b10d462db44ad9482846210f5a614fc6a77"
  version "0.1.0"
  license "MIT"

  depends_on macos: :tahoe

  def install
    bin.install "periscope"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/periscope --version")
  end
end

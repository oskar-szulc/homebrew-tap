class Periscope < Formula
  desc "Headless Safari-engine browser CLI for agents"
  homepage "https://github.com/oskar-szulc/periscope"
  url "https://github.com/oskar-szulc/periscope/releases/download/v0.1.1/periscope-0.1.1-macos.tar.gz"
  sha256 "2a7b3e62e6cc4475e403f9546e05be3d5cfa488b3037781eefd79d803952e395"
  license "MIT"

  depends_on macos: :tahoe

  def install
    bin.install "periscope"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/periscope --version")
  end
end

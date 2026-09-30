class Periscope < Formula
  desc "Headless Safari-engine browser CLI for agents"
  homepage "https://github.com/oskar-szulc/periscope"
  url "https://github.com/oskar-szulc/periscope/releases/download/v0.2.1/periscope-0.2.1-macos.tar.gz"
  sha256 "f91240368abcb7148d5e8d713816e9da5bf4e8b1b3e56607714ba481d46a9592"
  license "MIT"

  depends_on macos: :tahoe

  def install
    bin.install "periscope"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/periscope --version")
  end
end

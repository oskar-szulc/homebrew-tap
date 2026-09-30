class Periscope < Formula
  desc "Headless Safari-engine browser CLI for agents"
  homepage "https://github.com/oskar-szulc/periscope"
  url "https://github.com/oskar-szulc/periscope/releases/download/v0.2.3/periscope-0.2.3-macos.tar.gz"
  sha256 "6c174aee485d6cb714fede9a80a386d27d843be6bb0c155f25868311df970cfd"
  license "MIT"

  depends_on macos: :tahoe

  def install
    bin.install "periscope"
  end

  test do
    assert_match "0.2.3", shell_output("#{bin}/periscope --version")
  end
end

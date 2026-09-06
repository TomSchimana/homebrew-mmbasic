class Mmbasic < Formula
  desc "MMBasic interpreter for macOS, ported from MMBasic for Linux"
  homepage "https://github.com/TomSchimana/mmb4m"
  version "0.1.2"
  license :cannot_represent

  on_arm do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.1.2/mmb4m-0.1.2-silicon.zip"
    sha256 "22f2f0c070309f3c1e211010c244996a503a5f790bc5659bc762ff52d8e30d2e"
  end

  on_intel do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.1.2/mmb4m-0.1.2-intel.zip"
    sha256 "4dff534cc0599bb7c1362baf2416475325393b2881895d17fb5848114dce03f6"
  end

  def install
    bin.install "mmbasic"
  end

  test do
    assert_match "MMBasic for macOS", shell_output("#{bin}/mmbasic -v")
  end
end

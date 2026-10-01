class Mmbasic < Formula
  desc "MMBasic interpreter for macOS, ported from MMBasic for Linux"
  homepage "https://github.com/TomSchimana/mmb4m"
  version "0.2.0"
  license :cannot_represent

  on_arm do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.2.0/mmb4m-0.2.0-silicon.zip"
    sha256 "baf501f0b10b299fcee4eb412a19c5a2ebb1511a76e0f429bb3fa8034a96da13"
  end

  on_intel do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.2.0/mmb4m-0.2.0-intel.zip"
    sha256 "d6d95c02f1d39b01cbb02cdab2628e1251a7fdb4c5b7613ca2163ccb3499d5ee"
  end

  def install
    bin.install "mmbasic"
  end

  test do
    assert_match "MMBasic for macOS", shell_output("#{bin}/mmbasic -v")
  end
end

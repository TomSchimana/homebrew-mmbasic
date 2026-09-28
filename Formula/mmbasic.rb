class Mmbasic < Formula
  desc "MMBasic interpreter for macOS, ported from MMBasic for Linux"
  homepage "https://github.com/TomSchimana/mmb4m"
  version "0.1.3"
  license :cannot_represent

  on_arm do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.1.3/mmb4m-0.1.3-silicon.zip"
    sha256 "7e52581230e046e3443b082fcf2911b6485aea52675194691daa16dd75a81fe6"
  end

  on_intel do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.1.3/mmb4m-0.1.3-intel.zip"
    sha256 "f56e6fa06c030877ae0e5d42180033395e11845d1910dad51aa4d6ff582d5284"
  end

  def install
    bin.install "mmbasic"
  end

  test do
    assert_match "MMBasic for macOS", shell_output("#{bin}/mmbasic -v")
  end
end

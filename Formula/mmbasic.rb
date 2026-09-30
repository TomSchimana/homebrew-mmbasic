class Mmbasic < Formula
  desc "MMBasic interpreter for macOS, ported from MMBasic for Linux"
  homepage "https://github.com/TomSchimana/mmb4m"
  version "0.1.4"
  license :cannot_represent

  on_arm do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.1.4/mmb4m-0.1.4-silicon.zip"
    sha256 "cb896980b81c3d27f02730be8cb9449e330c93304a02ac25faf9e31c1b33d80d"
  end

  on_intel do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.1.4/mmb4m-0.1.4-intel.zip"
    sha256 "ea18ac818b9797056fb627bd4b9eb6b3e944b2bc7e1b743c4466d12a3bf1dd97"
  end

  def install
    bin.install "mmbasic"
  end

  test do
    assert_match "MMBasic for macOS", shell_output("#{bin}/mmbasic -v")
  end
end

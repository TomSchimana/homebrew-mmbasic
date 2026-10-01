class Mmbasic < Formula
  desc "MMBasic interpreter for macOS, ported from MMBasic for Linux"
  homepage "https://github.com/TomSchimana/mmb4m"
  version "0.2.0"
  license :cannot_represent

  on_arm do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.2.0/mmb4m-0.2.0-silicon.zip"
    sha256 "264f02862c56d503c5a32d5097907a4c7e2e31eb950e1b1947c4dea50c67a7c6"
  end

  on_intel do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.2.0/mmb4m-0.2.0-intel.zip"
    sha256 "e83a683be0e77928eb7c8cfe69ff6c9234b40b6d7a01b77208c48fbea648e570"
  end

  def install
    bin.install "mmbasic"
  end

  test do
    assert_match "MMBasic for macOS", shell_output("#{bin}/mmbasic -v")
  end
end

class Mmbasic < Formula
  desc "MMBasic interpreter for macOS, ported from MMBasic for Linux"
  homepage "https://github.com/TomSchimana/mmb4m"
  version "0.2.1"
  license :cannot_represent

  on_arm do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.2.1/mmb4m-0.2.1-silicon.zip"
    sha256 "973c6c817567268344dc8ff3fbed447994d173261a677fd1d3b5cb3856730eb6"
  end

  on_intel do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.2.1/mmb4m-0.2.1-intel.zip"
    sha256 "00880da5ec332b1fb18ba02cd0fe8d742853b48bbe7648bbe333ff52daa7e2e6"
  end

  def install
    bin.install "mmbasic"
  end

  test do
    assert_match "MMBasic for macOS", shell_output("#{bin}/mmbasic -v")
  end
end

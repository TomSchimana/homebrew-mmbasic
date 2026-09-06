class Mmbasic < Formula
  desc "MMBasic interpreter for macOS, ported from MMBasic for Linux"
  homepage "https://github.com/TomSchimana/mmb4m"
  version "0.1.1"
  license :cannot_represent

  on_arm do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.1.1/mmb4m-0.1.1-silicon.zip"
    sha256 "12795eb8354fe22737cbe969d9c89b0d437aa7ebaf1f3cec7cc75674ab1280fe"
  end

  on_intel do
    url "https://github.com/TomSchimana/mmb4m/releases/download/v0.1.1/mmb4m-0.1.1-intel.zip"
    sha256 "8501721b62745f32599c273c2c7e6230b065a8d220a2c8b8d19934096b5ed313"
  end

  def install
    bin.install "mmbasic"
  end

  test do
    assert_match "MMBasic for macOS", shell_output("#{bin}/mmbasic -v")
  end
end

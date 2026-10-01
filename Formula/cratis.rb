class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.21.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.21.2/cratis-3.21.2-osx-arm64.tar.gz"
      sha256 "e9d3a7578f36feb32a3e49d5e48afed3c9b9029482cd0e4f947393c55ab09e69"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.21.2/cratis-3.21.2-osx-x64.tar.gz"
      sha256 "fec5622c139259ade026bd52e34dc5226a0d0fbec7d1bbc4aa68c1dffbb92bed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.21.2/cratis-3.21.2-linux-arm64.tar.gz"
      sha256 "c2178f86d4420eef70257c87e354b0a83f3a584b03731c33ab22f7190afbec1b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.21.2/cratis-3.21.2-linux-x64.tar.gz"
      sha256 "dd9d37135ee749e44634df6effd1ff2bb9bbaa396ab3f2a5153b617efdddf41e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

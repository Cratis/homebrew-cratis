class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.9"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.9/cratis-3.93.9-osx-arm64.tar.gz"
      sha256 "50f7180a25dda6cab6f926353e9c84529bc14adff707feb1cbe6961c5f12a0fa"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.9/cratis-3.93.9-osx-x64.tar.gz"
      sha256 "f39cb0a179c33f219791e6226e089b2507ba45df8295a18ec8c0d3428c44bd48"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.9/cratis-3.93.9-linux-arm64.tar.gz"
      sha256 "0564d7b07b39ccb7f2679e69124f33f7901d91541be8600a6561b624ef48c96b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.9/cratis-3.93.9-linux-x64.tar.gz"
      sha256 "8c2f84924861ed8ad8292593c71ad6ea23ce9d235007ef35f8c55ebbe5728063"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.134.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.134.0/cratis-3.134.0-osx-arm64.tar.gz"
      sha256 "8278a5e7a00e3a8333f0ec1221d109a17313892a046c5239d502e93abf68a1d4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.134.0/cratis-3.134.0-osx-x64.tar.gz"
      sha256 "f033709517d7b3a2763b3488a1bdd0d36d31dc2ab67f8029202b168f77d91078"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.134.0/cratis-3.134.0-linux-arm64.tar.gz"
      sha256 "a34f5db0d4ad64a5e7b182cc7a69ad5276c432220aed9f9043badf6c69ff5048"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.134.0/cratis-3.134.0-linux-x64.tar.gz"
      sha256 "48dac390cacc5f730ddc1f186d652ef6fd79cd2b4031ba943be9a177b52d23f5"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

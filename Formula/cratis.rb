class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.72.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.72.0/cratis-3.72.0-osx-arm64.tar.gz"
      sha256 "4f5168915f324dbc213b5c13240c3c9ff3c41645eeb842fa9de0e9f1044ddaa7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.72.0/cratis-3.72.0-osx-x64.tar.gz"
      sha256 "ffe792d5492ad4a7168a4daa49b8b9b9cd6f1d353d4096e724c4fef87c6c91f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.72.0/cratis-3.72.0-linux-arm64.tar.gz"
      sha256 "3f256992f4e55d96454646332899e53e0ebdcdddd5765dff67fb54b5a1ba85ed"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.72.0/cratis-3.72.0-linux-x64.tar.gz"
      sha256 "8b3c665588d4337c4fde0abd6848dc040703ec9263e68193744ef32e8a420bca"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

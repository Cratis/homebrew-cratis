class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.90.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.90.0/cratis-3.90.0-osx-arm64.tar.gz"
      sha256 "427caf2ce57b0e2c055b825c6fcf4e11ce795ee218ff77a01907e339562145b3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.90.0/cratis-3.90.0-osx-x64.tar.gz"
      sha256 "534ead87900c5b2d3a31b385de8f21845bab82be1a1126fc33d45e186e5e62d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.90.0/cratis-3.90.0-linux-arm64.tar.gz"
      sha256 "21b09577a8169a3ac237b8817b5d8bf3719ff22307ea325fb862f5eedfdd0fc3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.90.0/cratis-3.90.0-linux-x64.tar.gz"
      sha256 "3df35d6a2fcdb054c8c18cb229ef486a5a6e7e5bc1e2b6e0e0ee3bc6f4cfb0c3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

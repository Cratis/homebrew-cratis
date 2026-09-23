class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.13.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.13.1/cratis-3.13.1-osx-arm64.tar.gz"
      sha256 "9dd37a9b48f310e2ec1d6e1737dc0582bda08adfe9b563a8762571e76114f35d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.13.1/cratis-3.13.1-osx-x64.tar.gz"
      sha256 "7223575673cc3a0e76afca1fcaa2f5e014596a1101d09789cf4c06cb3d20133c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.13.1/cratis-3.13.1-linux-arm64.tar.gz"
      sha256 "096eb96daa026dd77705cda901f566b539c954c8b9e209f424cd64a8a823626d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.13.1/cratis-3.13.1-linux-x64.tar.gz"
      sha256 "4fb05e1f02a339f12f5ee470f896bdb4161dbe0f75672cbf2c38a39397ebea9c"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.65.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.65.0/cratis-3.65.0-osx-arm64.tar.gz"
      sha256 "16fa094690121f43d9d262d45ac7865ae88ecc6c779a28ba8c046064e18c1bb7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.65.0/cratis-3.65.0-osx-x64.tar.gz"
      sha256 "90876153ad8ce5b9de659f33263ed06e8ccb6c4e8eb3c2059558af44318fd834"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.65.0/cratis-3.65.0-linux-arm64.tar.gz"
      sha256 "01f9e6cff3040ebc5df0b63765ed2b495ab764710bf949e2b6117a8718426d30"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.65.0/cratis-3.65.0-linux-x64.tar.gz"
      sha256 "ef71c3f3698fa0d67c8c604c92ea83e14e5066e505abb8cfd903116c6e3c613e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

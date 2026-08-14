class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.7.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.7.0/cratis-2.7.0-osx-arm64.tar.gz"
      sha256 "27cddb8cbb1219bff2e1e7a7a0b4f031a31a63686d8d97f240215f33dca9ca46"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.7.0/cratis-2.7.0-osx-x64.tar.gz"
      sha256 "d9e6c7012fee9990e0ac30324d80a276939fec889068837036e2b23c449cb00e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.7.0/cratis-2.7.0-linux-arm64.tar.gz"
      sha256 "1a1e2d657096ce07bacf4a6a07809f269b2480a3e5140bd6dc9d1c5d288f2060"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.7.0/cratis-2.7.0-linux-x64.tar.gz"
      sha256 "d9568a0e01d98dc6e8003f01762af89175e9d2cd003857feea2daa803b229ad3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

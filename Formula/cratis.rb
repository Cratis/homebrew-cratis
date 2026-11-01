class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.114.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.114.0/cratis-3.114.0-osx-arm64.tar.gz"
      sha256 "07c0da71710f3e65b5fa48dc2480c62b7db8a7001e81317269f1bf20d5b2c9ec"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.114.0/cratis-3.114.0-osx-x64.tar.gz"
      sha256 "d16f7c4248d1337a4ca470d55e99c18b95ff0fe6340b397ae06b80070b0a92a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.114.0/cratis-3.114.0-linux-arm64.tar.gz"
      sha256 "02e9d8e309d305b44f385e9f61e28e3e1254a42baa39bc1c5cae3e3fc2d3707a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.114.0/cratis-3.114.0-linux-x64.tar.gz"
      sha256 "aa941e8d7a0436d88e2752a64c1fc9d330c5fe85a4bd42fa2d0e6d3252cecb86"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

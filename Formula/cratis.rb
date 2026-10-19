class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.84.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.84.0/cratis-3.84.0-osx-arm64.tar.gz"
      sha256 "be764546a5e689a201509927d7f6ccb48fee9be6624d35e488bc026aa54f27de"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.84.0/cratis-3.84.0-osx-x64.tar.gz"
      sha256 "c9093d3549cb527358c504ad29a62b1b35903288dde49cb5b4f3d5b11f4f382a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.84.0/cratis-3.84.0-linux-arm64.tar.gz"
      sha256 "9ba14775d1a11095be4367349c686f8508765691bbf57eeea01d0083fbab699a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.84.0/cratis-3.84.0-linux-x64.tar.gz"
      sha256 "d25aa4c8ef0abc62243d61cd9ef7bd144fd1848ab30aac53f1823de44d801775"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

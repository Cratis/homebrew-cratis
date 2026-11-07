class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.122.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.122.0/cratis-3.122.0-osx-arm64.tar.gz"
      sha256 "d27d7b0e2e3edebc09c201b155e5834f9cb4bf39266ea9c94ddc4d76dcc4304e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.122.0/cratis-3.122.0-osx-x64.tar.gz"
      sha256 "8b658f477eaf21392f97852646b903a530102f487967a173782792f45abaa679"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.122.0/cratis-3.122.0-linux-arm64.tar.gz"
      sha256 "0b178a9051af69c38786fa763300d49f2309f843b91b9cf18ed24c26c9a0ba7a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.122.0/cratis-3.122.0-linux-x64.tar.gz"
      sha256 "4e8d6520453ece109e38ac9345dd5422d4a64cf4db029085c30c35c75ec8c8eb"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

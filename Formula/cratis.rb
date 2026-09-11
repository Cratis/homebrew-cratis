class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.1.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.2/cratis-3.1.2-osx-arm64.tar.gz"
      sha256 "1419dd17049cafcc20209aa19d6f970004e92708ed71db8291d31af4ae697961"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.2/cratis-3.1.2-osx-x64.tar.gz"
      sha256 "be30d9ca6eb62d87bbb03725cba98e18ddf6634c0dc4c07c678f465015554a01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.2/cratis-3.1.2-linux-arm64.tar.gz"
      sha256 "f29cbe0ea5e77c30fa2f48baf6b767e279154943156f53843130ef18b8327d3b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.2/cratis-3.1.2-linux-x64.tar.gz"
      sha256 "4dd3da4b879eacab63dc97b941b59e145ca27b1e84b6beacf701ac8baf33c71d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

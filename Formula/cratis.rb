class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.60.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.60.0/cratis-3.60.0-osx-arm64.tar.gz"
      sha256 "c7abdfc667efa24d7e0ea6e2c32300c07f837fa5479d39269c5af2d4aa347cea"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.60.0/cratis-3.60.0-osx-x64.tar.gz"
      sha256 "affa5cf68e1497adb1bcc8c984b8109fbe974ddbbf9300080ec519e7d7ae458c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.60.0/cratis-3.60.0-linux-arm64.tar.gz"
      sha256 "e2d044dc5c04e26db67704ee7117be99a56f1fab4b7ee94f567344f55b1de4d4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.60.0/cratis-3.60.0-linux-x64.tar.gz"
      sha256 "303c0288824d79856428dc8c4105d8ab59a204ba3a83674c882ccbeea0a64852"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.2.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.2.6/cratis-1.2.6-osx-arm64.tar.gz"
      sha256 "10363b618cff9c18bc02cd7545bedf87eaa0f65673c4f8d7be2f1517788b43d2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.2.6/cratis-1.2.6-osx-x64.tar.gz"
      sha256 "051c1c27c3bf7c525c6427f9abdee725e5de51a90a6de1487641439dadb6b0c2"
    end
  end
  on_linux do
    url "https://github.com/Cratis/cli/releases/download/v1.2.6/cratis-1.2.6-linux-x64.tar.gz"
    sha256 "9be9a294fde3a95ab58fc5d4ae1682e4f6636bbe7aacc5746c08ff94100c90be"
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

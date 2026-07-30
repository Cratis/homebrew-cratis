class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.3.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.6/cratis-2.3.6-osx-arm64.tar.gz"
      sha256 "8e92e90fdded62e4431ed2a94724274f2298c2c9dcfe4f3112d664cf39d71d89"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.6/cratis-2.3.6-osx-x64.tar.gz"
      sha256 "e99be594e92582a593c954d97cc0764cdf082634112bd2b773f97661a84a09d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.6/cratis-2.3.6-linux-arm64.tar.gz"
      sha256 "a3215f99c2ddef5e2c4595265787eba9fd06074498b847ef8b1762c4ce8d92a0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.6/cratis-2.3.6-linux-x64.tar.gz"
      sha256 "0e1b114cc2464fbb669d1bc35c658fef2f8f01808ef47cefb30f57349b05b267"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

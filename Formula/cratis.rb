class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.5.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.5.0/cratis-1.5.0-osx-arm64.tar.gz"
      sha256 "b239906e7cc00e938cf05147e021aabf7b5b77dceb2e0970c7a84f8c3c7f41c9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.5.0/cratis-1.5.0-osx-x64.tar.gz"
      sha256 "e7088e8fa4aef1b16664d0ba5c552c59cdc9479ee5b34ab7f910d478885e5429"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.5.0/cratis-1.5.0-linux-arm64.tar.gz"
      sha256 "3f2b63ca4bdaa39fb75d8a999ac0ef3eaa95ae17fc3927b8e063f80067e2c652"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.5.0/cratis-1.5.0-linux-x64.tar.gz"
      sha256 "767f2e15aee9cf89a08900ec71e8e232d447e19dc612e9029b3ea0913b5579ea"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

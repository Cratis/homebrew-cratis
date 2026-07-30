class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.3.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.3/cratis-2.3.3-osx-arm64.tar.gz"
      sha256 "cebdc9a1073063bc669deff33fb1fd455f74dc1e1af0ae2c2dcad260a37ded01"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.3/cratis-2.3.3-osx-x64.tar.gz"
      sha256 "cb9301075dcbde87a2c1bd6036dde085ca4054220eb709fb5f785802a2f09feb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.3/cratis-2.3.3-linux-arm64.tar.gz"
      sha256 "cfb996da36a7c4863ee8d267012bd13fe66d9e3e752db36632c2360c6b689223"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.3/cratis-2.3.3-linux-x64.tar.gz"
      sha256 "81a11bbf6f0b3f20bebec90a852a7d33d808f81ef9302dc3cd9d38c8ccfbfb25"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

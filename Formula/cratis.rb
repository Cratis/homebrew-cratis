class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.13.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.13.0/cratis-2.13.0-osx-arm64.tar.gz"
      sha256 "9054635ec47524038213c4dab98aa0c5c5f82ca4b07a528a35fc1ec4cc0d36d6"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.13.0/cratis-2.13.0-osx-x64.tar.gz"
      sha256 "5a34d9ecfbe711724acab232f4b4e97a1bcfb0a04d21951ac884eb2e830f1837"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.13.0/cratis-2.13.0-linux-arm64.tar.gz"
      sha256 "38ea80dba02699f307bcd431f848433767b59956bc966f90f4521bc95a8232d1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.13.0/cratis-2.13.0-linux-x64.tar.gz"
      sha256 "05a0bbb447cbcf6a12c8184d103c56bd6a24e63fe2f2a59d3cc95fd6b4c1c2bd"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

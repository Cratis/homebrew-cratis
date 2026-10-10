class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.43.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.43.0/cratis-3.43.0-osx-arm64.tar.gz"
      sha256 "b52016838e5d2b713ef89cd9cf60870eba50043ace476b0c16c9dc7d936b8c1f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.43.0/cratis-3.43.0-osx-x64.tar.gz"
      sha256 "1e5d0a4aa1d74f158d38a9b79b6f0d10763ec2f9a86b59bbe1d0a708d3827fe5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.43.0/cratis-3.43.0-linux-arm64.tar.gz"
      sha256 "c60381a0c8571fd313b024bbe31f613e3a7e310ff6aa4d24e6a7547096efb978"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.43.0/cratis-3.43.0-linux-x64.tar.gz"
      sha256 "a95296daa48db59b46e8388fb792e830cee379f344b0b173b084d7e97a5fbe23"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

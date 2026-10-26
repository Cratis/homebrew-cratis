class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.103.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.2/cratis-3.103.2-osx-arm64.tar.gz"
      sha256 "b636e61215c301a6f9b0dd7e27657b6145f244a57e7b936a297891df02340ddb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.2/cratis-3.103.2-osx-x64.tar.gz"
      sha256 "741712c073b694edcf4bf7545b7f5295a5cd55a7ecb84421dd8ac2c706f9e41f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.2/cratis-3.103.2-linux-arm64.tar.gz"
      sha256 "5593de05b0250b1061c0d74cc9fc3c6d3896630735c13d87dc662c5b495faca1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.2/cratis-3.103.2-linux-x64.tar.gz"
      sha256 "7284a7ebf8cfbce2bd1e108daeaf7aebab4992ff7438d195fafee7a5b2fbd363"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.140.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.140.2/cratis-3.140.2-osx-arm64.tar.gz"
      sha256 "8d2c33e18b4b68cb93c7d884e4cb321935f16579ee978854a161c48393f3b24e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.140.2/cratis-3.140.2-osx-x64.tar.gz"
      sha256 "d6f602f1da7197a4b94f6a7c14a8d4554717152bbd470f8ea2acb6abfdb542d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.140.2/cratis-3.140.2-linux-arm64.tar.gz"
      sha256 "433a9254c0a374f7dfa979221245bdb5e2d7459ba3a7a53cc86262fe9f9712df"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.140.2/cratis-3.140.2-linux-x64.tar.gz"
      sha256 "90a7f1e92c092f60daf69000ff83d69ec922ec7d5e3ea2fe567231aaa2cac84a"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

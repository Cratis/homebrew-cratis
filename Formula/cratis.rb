class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.127.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.127.1/cratis-3.127.1-osx-arm64.tar.gz"
      sha256 "66964845fd87879c9f018dd7283c1e52cc3b5d77274c4ac1987c5830a1928efb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.127.1/cratis-3.127.1-osx-x64.tar.gz"
      sha256 "79f631ac7b353d83fd8993125e03d20ef608791ded2067dd6ec308e669cb1468"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.127.1/cratis-3.127.1-linux-arm64.tar.gz"
      sha256 "4ffed454f84e4adb43046357fca06ffd1955964c2ac445985c4bc16d403c6666"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.127.1/cratis-3.127.1-linux-x64.tar.gz"
      sha256 "85d7bda064b4abb308765ac87430451f71de438957c9a62285542bb197c70d4b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

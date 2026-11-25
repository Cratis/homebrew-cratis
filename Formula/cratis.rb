class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.149.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.149.1/cratis-3.149.1-osx-arm64.tar.gz"
      sha256 "7e543e478bb67e7122a6975855c8d14b5a23885f8e766a254d251e70c64dcacb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.149.1/cratis-3.149.1-osx-x64.tar.gz"
      sha256 "796b88d568b58c874dfd7b34e106000b790c52f8e02c8bbad23dac1cfd72730a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.149.1/cratis-3.149.1-linux-arm64.tar.gz"
      sha256 "f92c5a014fdcadc45f62c65e3eef14172bfeec996525c158421c210341bcd619"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.149.1/cratis-3.149.1-linux-x64.tar.gz"
      sha256 "0a30b0d274c1c55508762f15380be485dd2bce6b23a25c9f68493fa8d45f062b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

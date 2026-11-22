class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.146.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.146.0/cratis-3.146.0-osx-arm64.tar.gz"
      sha256 "fb6ab7b976eb4cc503d67f6f2a17fc95637228d405082abc766d568c7074258a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.146.0/cratis-3.146.0-osx-x64.tar.gz"
      sha256 "9319747e5f4c9401bda94195c6e6a6c158427b44a6217ad3da7517294d88ede3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.146.0/cratis-3.146.0-linux-arm64.tar.gz"
      sha256 "fe04d10243ab5199a55a2532a5f6083f4f6a22d961ca6a591cc642639c2232d2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.146.0/cratis-3.146.0-linux-x64.tar.gz"
      sha256 "6c785126c9dcfc45f56e9913c9f4d8c4300ff9adb5dccdc0ce01408d9443a825"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

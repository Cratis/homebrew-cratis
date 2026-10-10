class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.41.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.41.0/cratis-3.41.0-osx-arm64.tar.gz"
      sha256 "c52498f1797b0a66628e533909d334b3cdefe97ed3e3cb2b22b386cf87411f34"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.41.0/cratis-3.41.0-osx-x64.tar.gz"
      sha256 "f90e8ee0d036be9bd4b70fc665df84ebde6cec99f5928ae3bbdb481aa38ed5da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.41.0/cratis-3.41.0-linux-arm64.tar.gz"
      sha256 "6a68ae5630a4c8b83650ccc544d860c8cae8bd4eb1a612ebdc9a76c8b2b967da"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.41.0/cratis-3.41.0-linux-x64.tar.gz"
      sha256 "a7e07c0c65c6a8590cea146eb1c1e19aa0217144c43beec1a02fbecfe19d4fec"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

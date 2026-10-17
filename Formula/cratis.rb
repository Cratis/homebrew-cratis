class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.76.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.76.0/cratis-3.76.0-osx-arm64.tar.gz"
      sha256 "1cb829d7ad1838d60d5aaddac8ca6820626651dcc4c4d20aae1c763525678206"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.76.0/cratis-3.76.0-osx-x64.tar.gz"
      sha256 "b9a695ec3b70277eb2969c4e37a80f8bfb6532fac845cdb39b7de15580606086"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.76.0/cratis-3.76.0-linux-arm64.tar.gz"
      sha256 "f716ed9722f0ff13ced8b9e47268b8bf60b1eb2bd3724df87f7eb6d18d11b98b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.76.0/cratis-3.76.0-linux-x64.tar.gz"
      sha256 "3b027a02c6d4329822925630269602da10499881739e12e1a6ea744031fe7500"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

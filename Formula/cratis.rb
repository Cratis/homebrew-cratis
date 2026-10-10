class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.43.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.43.1/cratis-3.43.1-osx-arm64.tar.gz"
      sha256 "cc045a754eae808281e409a0098aee8804300f65b942d0a4f71096e858696238"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.43.1/cratis-3.43.1-osx-x64.tar.gz"
      sha256 "4d39ca6d753b4fee3cc092fd3c388ed2ea946954a764743876bd24d5d9398b8b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.43.1/cratis-3.43.1-linux-arm64.tar.gz"
      sha256 "c763c541eca90b48ac3b74f7dbc8aff472cd6cd6d220962dcb684f265b47e6d7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.43.1/cratis-3.43.1-linux-x64.tar.gz"
      sha256 "845a45cc5024a120e9b73ea24b814400d4e64955555ee1d03b8f0d4b2212c395"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

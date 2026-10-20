class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.2/cratis-3.93.2-osx-arm64.tar.gz"
      sha256 "31dc3a1a9f36f0424d9b980153c2fab54db14069a29ad3dcaf4c9fa79b4a8cf7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.2/cratis-3.93.2-osx-x64.tar.gz"
      sha256 "d4b8cdeb4caa6616a682396e3c2edda9e1c90b747c4a0207bb361a2e1978485b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.2/cratis-3.93.2-linux-arm64.tar.gz"
      sha256 "e3e3501249593a8d6a3ce7d971288826b6d26d104b7da90a590c72b0b318f812"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.2/cratis-3.93.2-linux-x64.tar.gz"
      sha256 "2fe11089dcc3697e0281da3657683d598a9ecafbab9fe61cbcb0bdfeff1a1475"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

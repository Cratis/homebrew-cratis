class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.142.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.142.0/cratis-3.142.0-osx-arm64.tar.gz"
      sha256 "c456f1258f9cfed55a14e4ea0ecb0c80f467613a5b3c644ed264123ab58fd60b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.142.0/cratis-3.142.0-osx-x64.tar.gz"
      sha256 "f43ada0e79424332228de16960953bef12b9cce51f593fcc30d74e0ceb45a8e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.142.0/cratis-3.142.0-linux-arm64.tar.gz"
      sha256 "8fb4079794b8e1535253114d3bdce82552932a8582065f370f56045af1fdb731"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.142.0/cratis-3.142.0-linux-x64.tar.gz"
      sha256 "1e9c48d93ab03c25f09138873a9b3b61779bf5f8807d782ef05492ef73fe2c41"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

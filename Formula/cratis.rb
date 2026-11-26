class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.153.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.153.0/cratis-3.153.0-osx-arm64.tar.gz"
      sha256 "58172213fd7cb7ba35af54cb93f337a1b2f32f7b6afaa2357c9e53a394fa3b42"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.153.0/cratis-3.153.0-osx-x64.tar.gz"
      sha256 "b6fd0ed0e7385a828a8e07b6940743ffbdb6d08b0022c991e4d00018815f8b6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.153.0/cratis-3.153.0-linux-arm64.tar.gz"
      sha256 "3eb0e8d98eed4cfe6a77cbf3ac096927a4baadec244e2a86ee23fa59dbaa8737"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.153.0/cratis-3.153.0-linux-x64.tar.gz"
      sha256 "4afff2390b9d1be8c258f4f71cff60991e0ed89bf9bc2333a490e7d03551ff18"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

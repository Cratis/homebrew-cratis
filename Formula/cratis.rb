class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.19.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.19.0/cratis-3.19.0-osx-arm64.tar.gz"
      sha256 "dc2155e22d665dc233f624bcd4b540535b898e8fcd869a8794ab0ae5ba9d4c20"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.19.0/cratis-3.19.0-osx-x64.tar.gz"
      sha256 "cb757a05293e42c027d7c7b2000f29c9b9e8eb21f1f0ad8ceeb5f0b10d34c9cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.19.0/cratis-3.19.0-linux-arm64.tar.gz"
      sha256 "6b3b71f5d6f95c946e77ef032f56f6542ac4e74e46dc556e9ce2ab6a1ef533e0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.19.0/cratis-3.19.0-linux-x64.tar.gz"
      sha256 "a276e8d95de9a60caf63aeb992829f1e59ff5071839dd57b45e079db1fa54395"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

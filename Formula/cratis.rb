class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.87.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.87.0/cratis-3.87.0-osx-arm64.tar.gz"
      sha256 "075fa3da2afe001c7a257bcc94a52fdb89d3a05e91afdd0fb6ebe011c8b14952"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.87.0/cratis-3.87.0-osx-x64.tar.gz"
      sha256 "02b02ff2eb9d1b798a56b5dc69041ea40eb811fa79ff28ea7761a6fd27d5f0d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.87.0/cratis-3.87.0-linux-arm64.tar.gz"
      sha256 "e564c3d472bb5dcf5bc8d45d6b9b7ea59e5e5001f4628fc86a02097092d7dc10"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.87.0/cratis-3.87.0-linux-x64.tar.gz"
      sha256 "739a674dcc8b20c7e13308377c8a619bfe97c7f1eb126a71ae0ad72bdc44c8d7"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.0.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.0.1/cratis-3.0.1-osx-arm64.tar.gz"
      sha256 "093ba4b707f75e8a494b6285de02be032a0ef41c36011d743748fc3fa2e64305"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.0.1/cratis-3.0.1-osx-x64.tar.gz"
      sha256 "d6e66253899d303f0a7a9d2218b167e5bbfd90584d0a46dd1b4faff46adb3bb5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.0.1/cratis-3.0.1-linux-arm64.tar.gz"
      sha256 "a66cc42fc66ad5de659566f068cde4e9610249f4737962839f76792aac787d27"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.0.1/cratis-3.0.1-linux-x64.tar.gz"
      sha256 "b22e26c3d795d056673d94f18ce54a820fedda29cfdd4f0cdf1e0566916f694e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

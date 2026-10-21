class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.8"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.8/cratis-3.93.8-osx-arm64.tar.gz"
      sha256 "b91049f70626384d6354a3ad29e205a0651b8bfec19270b7dc9431f889ab6b6c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.8/cratis-3.93.8-osx-x64.tar.gz"
      sha256 "190ac61d80586f5d36545979a30924f539159e4a69b0383bd98a64b124248a2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.8/cratis-3.93.8-linux-arm64.tar.gz"
      sha256 "379c1b5e0e34e3449d753f97830bee208abd08061496a5f19ae0fc14134c6129"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.8/cratis-3.93.8-linux-x64.tar.gz"
      sha256 "b902cb8b8ca3a854873a2f56636e60b53da3abf3ccf30a64c904ed6e72793490"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

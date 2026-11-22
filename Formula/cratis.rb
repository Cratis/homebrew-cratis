class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.148.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.148.0/cratis-3.148.0-osx-arm64.tar.gz"
      sha256 "62ff4554473ba3aa2ba4ea2b793c36cf3fbda1501e3674da6490a98ee71a0b1d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.148.0/cratis-3.148.0-osx-x64.tar.gz"
      sha256 "9f1601d36ebd85fe31a12dddda779f35a38375234ca6765e44ee4a8b0a3974ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.148.0/cratis-3.148.0-linux-arm64.tar.gz"
      sha256 "a4c2c2b8b85ed3dc305b361edfa8be7093b18fed9b0394aecab058506534856a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.148.0/cratis-3.148.0-linux-x64.tar.gz"
      sha256 "b99449aab8df1e0ea90d28561e76121df015de533c2c5d0de3398bd7ceb2f5ac"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

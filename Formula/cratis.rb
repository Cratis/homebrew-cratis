class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.6"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.6/cratis-3.93.6-osx-arm64.tar.gz"
      sha256 "ced02e41ff29fd7aefbc9d6ba88d2c5d8090d28e81d028cee22ea8abbf4d1c5d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.6/cratis-3.93.6-osx-x64.tar.gz"
      sha256 "9d4b6c9b4433b1b907f4da93be7290fabe5733bd65fb66f75d07aab29168852d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.6/cratis-3.93.6-linux-arm64.tar.gz"
      sha256 "9244b4fcbd0233eda7411c280e6ea8b0a293d210861d053436807533b8f6dc83"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.6/cratis-3.93.6-linux-x64.tar.gz"
      sha256 "3613078863bca576d3f77466a6eeb9b6874b3be4f12b789834f8030edfe27277"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.15.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.15.0/cratis-2.15.0-osx-arm64.tar.gz"
      sha256 "83fc3b9ec0ce64cde22bb95f2fed87b6313f9e70053bd1faba78a115809c976a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.15.0/cratis-2.15.0-osx-x64.tar.gz"
      sha256 "36bc839df7cae84eff4e533ae7e290fe32cc82fed1f60da85e6ebe4b507d8c92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.15.0/cratis-2.15.0-linux-arm64.tar.gz"
      sha256 "d7f4dbfd505483063444e0a3adec0aa853cfa20b983d9a74a776fd172fbc3a72"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.15.0/cratis-2.15.0-linux-x64.tar.gz"
      sha256 "e9c241fca47361cb4ab97f0c3abaf9f52c87c22596109dfb238009aa0d3f2862"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

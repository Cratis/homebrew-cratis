class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.40.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.1/cratis-3.40.1-osx-arm64.tar.gz"
      sha256 "4d5940de5de18df9f1f29851d5424064aa249e7a13b0a457ca1760654f6049c1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.1/cratis-3.40.1-osx-x64.tar.gz"
      sha256 "424095aa99d9026dad06e691b390c3fc7026b9dd1f307fd58e4dd75c4a1b75fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.1/cratis-3.40.1-linux-arm64.tar.gz"
      sha256 "8858ff8f70676f95d967b84fc7edb87503ae0f1cf6c1bc8af4b05fdf4b6e2f88"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.1/cratis-3.40.1-linux-x64.tar.gz"
      sha256 "43641c20f602e8e262e5f314af9ecd55f9cfe74096f52f6ceee8b307d9ce09a2"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

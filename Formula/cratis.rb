class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.1/cratis-3.93.1-osx-arm64.tar.gz"
      sha256 "cf925b9616a9c097907d12ee7954786bc4b3aa0bafbbbd361199fd75a60ab6ca"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.1/cratis-3.93.1-osx-x64.tar.gz"
      sha256 "d4dd802c24c7484a6ca238a4d4f2dad11cf028f2f3be418fd67900caeb6dcd82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.1/cratis-3.93.1-linux-arm64.tar.gz"
      sha256 "2fc9f31a601e7722ff8f5f4c1d5713a2459f06e1e578b719bec71fc6c0f61d6d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.1/cratis-3.93.1-linux-x64.tar.gz"
      sha256 "8fc64d919a930c8bbc5bf2d35365514fbfb944b83d00437e03d3a529adc87e91"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

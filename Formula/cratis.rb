class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.150.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.150.0/cratis-3.150.0-osx-arm64.tar.gz"
      sha256 "424c1f13e21414db1ebb7a07fe8c0c5f02203f5f2650021444412bbca74bbf3f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.150.0/cratis-3.150.0-osx-x64.tar.gz"
      sha256 "4114c7bb2ab748d4e30eeb5486041fae70506886e4c415569163b43e92633aa0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.150.0/cratis-3.150.0-linux-arm64.tar.gz"
      sha256 "3d25cc5637c0f9652184770e2c9c534cbfa6f3aa6f46bdc8df35c573e689d59b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.150.0/cratis-3.150.0-linux-x64.tar.gz"
      sha256 "88cbb0b834f8d671465ab6fb9d5cdff5ccc74c1cac63d58de97a9402d67a3967"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

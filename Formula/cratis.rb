class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.101.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.101.0/cratis-3.101.0-osx-arm64.tar.gz"
      sha256 "c5620fe48932e703081d45e9a2d9bf0a92b0a846bc3e4ebed67f408344b546fa"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.101.0/cratis-3.101.0-osx-x64.tar.gz"
      sha256 "70c23a88a31fa4547bfaccacc18f55e5bbba48bee4b69a9d6fd187e98b4dbf23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.101.0/cratis-3.101.0-linux-arm64.tar.gz"
      sha256 "c6f9d10a703ba3aac717de7d2562aa1e1505608bf39003865bc37f5ca762b4d1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.101.0/cratis-3.101.0-linux-x64.tar.gz"
      sha256 "ea188c6a4fee7d65110e52ae4ae2b353a01f2222f1a91ae265cd6fd95c6189ce"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

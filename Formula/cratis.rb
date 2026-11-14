class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.135.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.135.0/cratis-3.135.0-osx-arm64.tar.gz"
      sha256 "faf3b4b90668ba819d8028b3259936835866db26dafc1b038008ea3615d95e2f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.135.0/cratis-3.135.0-osx-x64.tar.gz"
      sha256 "4daffd8aecef9cab0b45ae63b0c35de349c3bb85507990dcd0d2ee57a4a85de7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.135.0/cratis-3.135.0-linux-arm64.tar.gz"
      sha256 "25e6182600462c6d59566db107b09d31de716a7fee6eaa76aa9997bedcb861e5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.135.0/cratis-3.135.0-linux-x64.tar.gz"
      sha256 "766c4a3b01aab90a952698572a3f5096ee57c003c6420dd5af722b7bc2dea3f3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

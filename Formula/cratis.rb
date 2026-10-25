class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.97.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.97.0/cratis-3.97.0-osx-arm64.tar.gz"
      sha256 "7514f6ee5b7afa5ef204e84117d4bf80a5f42af4fedbe68701a7888baffa1f3c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.97.0/cratis-3.97.0-osx-x64.tar.gz"
      sha256 "9042e19f61410927924a6f24f8bae8535393168ebd5e2eca75985f3dc08579f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.97.0/cratis-3.97.0-linux-arm64.tar.gz"
      sha256 "813ee1eaba94c1a9a2458f0a11d744bef03fe8a18eded7c4ff2b12628cbd3e87"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.97.0/cratis-3.97.0-linux-x64.tar.gz"
      sha256 "4f8a380b01af68158de195942762ead962032c0060acbeddb1e3cf40d9fcf9b9"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

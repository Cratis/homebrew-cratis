class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.14.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.14.0/cratis-3.14.0-osx-arm64.tar.gz"
      sha256 "93fc9d0d48200c6733465a6f00d6c6eba87ff25dbe3a32703c5516555b8a634a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.14.0/cratis-3.14.0-osx-x64.tar.gz"
      sha256 "4b64108f8abace2346e66d81e318b2049ae7f19acd5a0dbc3586916dadf29696"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.14.0/cratis-3.14.0-linux-arm64.tar.gz"
      sha256 "30d0e12676e2e88a275d85c1b4d7270c14b225340b852a06d0fc557d42081cb0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.14.0/cratis-3.14.0-linux-x64.tar.gz"
      sha256 "ab3a1ad316e6127d8c26b6d9307c1af7b1e14d234ba6f765d65aa757137aef8b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

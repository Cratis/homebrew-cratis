class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.94.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.94.0/cratis-3.94.0-osx-arm64.tar.gz"
      sha256 "1e711e82d328b9ce25808f748db411a1665a51fe40fbc5495eff2db1527af33d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.94.0/cratis-3.94.0-osx-x64.tar.gz"
      sha256 "33ec4dde85f7b73de704adf9f9cc9cf5968d7955088a359c9af58c428c734cf7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.94.0/cratis-3.94.0-linux-arm64.tar.gz"
      sha256 "0b3c60bbaa4909ed4b3f11b6cfa4ba3c8684cb018dda9577dc928e414c6f535f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.94.0/cratis-3.94.0-linux-x64.tar.gz"
      sha256 "7ed3fa60020e7e3b0a19136f211e552230ff67adb421e80b3ef4aa711f91e6c0"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

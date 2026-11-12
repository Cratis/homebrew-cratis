class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.129.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.129.0/cratis-3.129.0-osx-arm64.tar.gz"
      sha256 "b890b34393996348ec8a9e9eef2942ee4459a0600fa2ba8d04587b19ac5281f3"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.129.0/cratis-3.129.0-osx-x64.tar.gz"
      sha256 "ec6e5b5dd1a787f6d8376a8c82be4827d7979b83f86285a884910249dd1192ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.129.0/cratis-3.129.0-linux-arm64.tar.gz"
      sha256 "9e68b566314a71c4643f9ce5edcba52af594749e4d498da3436859f7c29970d2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.129.0/cratis-3.129.0-linux-x64.tar.gz"
      sha256 "ce6d636794ee679eb3baf11b0de29034cbf505f739988afd9fca2a9bf431ebf5"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

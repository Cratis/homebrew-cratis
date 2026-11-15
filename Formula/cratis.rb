class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.136.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.136.3/cratis-3.136.3-osx-arm64.tar.gz"
      sha256 "a94cf7a01a8424d7d8a339ceea1447a646de4d6a34d37a3b0c7cfffe02189c83"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.136.3/cratis-3.136.3-osx-x64.tar.gz"
      sha256 "aae0f94bf4e854f8a70f9136471343f5c685eb40178eb142e26f8259bf32b59b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.136.3/cratis-3.136.3-linux-arm64.tar.gz"
      sha256 "c227df7ac2a2b3250a882d498725c02a3f67350aaef323d621f1007bc6407b41"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.136.3/cratis-3.136.3-linux-x64.tar.gz"
      sha256 "4bf8f07a3e545e6d1aaf1f7f286a6208068eaed7916e54125074ac72c7202a27"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

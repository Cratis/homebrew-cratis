class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.48.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.48.0/cratis-3.48.0-osx-arm64.tar.gz"
      sha256 "d94a18cf75b8dd8a23131ccbef257d2953bc93170aa9310c70b08b72e94ce430"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.48.0/cratis-3.48.0-osx-x64.tar.gz"
      sha256 "3975a41a60f69a8c9f192a9a50c41edd13e0e49055da7da1754f711218ba39b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.48.0/cratis-3.48.0-linux-arm64.tar.gz"
      sha256 "d41c10beb29c1c23dc519a864af9a2797853b251c56013a97097da1a6671ad5f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.48.0/cratis-3.48.0-linux-x64.tar.gz"
      sha256 "f5c6f9ec3bb6f8de3dd330661d89fd2ff5aa224310488ac717c13694de1b1cba"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

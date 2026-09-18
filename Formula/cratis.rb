class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.8.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.8.1/cratis-3.8.1-osx-arm64.tar.gz"
      sha256 "b841740e772900bebf0dc5f118c1e3b2b1e4cdf59bd71fbb472b146324232316"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.8.1/cratis-3.8.1-osx-x64.tar.gz"
      sha256 "e598232fe39bdd807bc85e8280492ee69764a3b92e1edade0005070bffa76257"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.8.1/cratis-3.8.1-linux-arm64.tar.gz"
      sha256 "442ea1be5afd9b8a737495264c04081cb12c2f090448492e9238a2c2f35d3df9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.8.1/cratis-3.8.1-linux-x64.tar.gz"
      sha256 "8f49e66d23c29cf72156fa965f6af99c8ab2380030543f7731590dcef1eb79c9"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.107.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.107.1/cratis-3.107.1-osx-arm64.tar.gz"
      sha256 "b22bd16ddf15ec5012ad4555415c8f917d74ea0aeaacd5a92b66d896637a88ae"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.107.1/cratis-3.107.1-osx-x64.tar.gz"
      sha256 "13a3967b32918950026eeaece9b4275683c19232c4362e3a8c5ded28dcbb74fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.107.1/cratis-3.107.1-linux-arm64.tar.gz"
      sha256 "2df3c484eef185c5b569af839575606babfaf9efa420d3510938bc43fa8d96cf"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.107.1/cratis-3.107.1-linux-x64.tar.gz"
      sha256 "f8a370f3e8089bf17d3299da1aa8526afc51397537cd2656f08304b0eb907e2b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

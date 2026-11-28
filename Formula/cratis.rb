class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.155.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.155.0/cratis-3.155.0-osx-arm64.tar.gz"
      sha256 "1b9b3031eed59969a441a69d24ed861512ccbf96ef78ac90228eea99f4ec012b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.155.0/cratis-3.155.0-osx-x64.tar.gz"
      sha256 "c18fcae25ad10c589ce6fd62c370b6ca071f392453101078758d277e93ee9394"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.155.0/cratis-3.155.0-linux-arm64.tar.gz"
      sha256 "162672fd9f6cc394aaaf8903dacb30bc99ed2a6914960af401a97133876a13ce"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.155.0/cratis-3.155.0-linux-x64.tar.gz"
      sha256 "e94656e7d1d1996f3b5dcba31d2accd458b91063463bfcd2b274dda44fe93608"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

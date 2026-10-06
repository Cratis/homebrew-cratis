class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.27.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.27.2/cratis-3.27.2-osx-arm64.tar.gz"
      sha256 "40bed9385e39e61ef1790eb19e582e7dbb256e9af5396e24fe89da62c753bff5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.27.2/cratis-3.27.2-osx-x64.tar.gz"
      sha256 "1c4aa835ce2e9885991152a491e38caf06248d9ddfaa7d8ed8d965f954d628be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.27.2/cratis-3.27.2-linux-arm64.tar.gz"
      sha256 "17d2222926745ef3eafffd27ab5863fd3f69c6673d98f2c771babd6c0059730d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.27.2/cratis-3.27.2-linux-x64.tar.gz"
      sha256 "9a6891b46e09acb559374598eda3edd93cc6592dd6f57424260c7e02458cf2a6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

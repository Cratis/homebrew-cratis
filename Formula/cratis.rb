class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.52.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.52.0/cratis-3.52.0-osx-arm64.tar.gz"
      sha256 "cf52d391847bfcf6f6161464d72abe3e566437c82070b2b993768437d4203b26"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.52.0/cratis-3.52.0-osx-x64.tar.gz"
      sha256 "ceadc2a9a275da1691b365e535a26b0d2de805207e11a7bae46d8b79d5c1a65a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.52.0/cratis-3.52.0-linux-arm64.tar.gz"
      sha256 "5d1b51cec85351e8e3be82944f4bb93d090d01beab724046a0b48d9198f19582"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.52.0/cratis-3.52.0-linux-x64.tar.gz"
      sha256 "7659ae50cc0740adeacde1f4625ed364581f40a3643022b70df516715861f2dc"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

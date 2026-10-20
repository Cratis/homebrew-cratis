class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.0/cratis-3.93.0-osx-arm64.tar.gz"
      sha256 "b5a9376b0f28cc5996b0f96d7e99421b64f0282bf5fe05f9987e5a8543bbf6d4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.0/cratis-3.93.0-osx-x64.tar.gz"
      sha256 "3e306dc1b7bf534b59ffdf1daa81bbe3347f941de1033d0e70c05a660fb6f3d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.0/cratis-3.93.0-linux-arm64.tar.gz"
      sha256 "4c1bb4d8febcb0f6ae9b4b4d2c17ffba7937f6d3d2b55495a4affe0afa1d6574"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.0/cratis-3.93.0-linux-x64.tar.gz"
      sha256 "0ea5b6258c06d67aa81f01e90e8dae1a00a10a4e94e2c28e815ec524f8fdefdb"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

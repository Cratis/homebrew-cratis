class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.136.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.136.1/cratis-3.136.1-osx-arm64.tar.gz"
      sha256 "8939e0f7ea3ea7292bf17e585706b944b134389260fd8aba054f5adc1e83297a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.136.1/cratis-3.136.1-osx-x64.tar.gz"
      sha256 "de855b937782df34ea02cd9c5a11c30519d934a64bf984ffe6dcfb9f5a890c6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.136.1/cratis-3.136.1-linux-arm64.tar.gz"
      sha256 "7a0a20c60a239afc3b2f56ea72c63aa84414740b4c798fb43f5825c6336a04ad"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.136.1/cratis-3.136.1-linux-x64.tar.gz"
      sha256 "5a77f662bebf7f91ededd3ee05517e642b77ac049a965f3d63d8a5341e8154e6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

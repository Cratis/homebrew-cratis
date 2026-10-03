class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.24.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.24.2/cratis-3.24.2-osx-arm64.tar.gz"
      sha256 "bf60a48b2799963bedecb4a837766b8204af771d738c93ba3df8c6d483bf24c2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.24.2/cratis-3.24.2-osx-x64.tar.gz"
      sha256 "bebcec0ddcf80006cc6d03e00339b9dfb9ddf4df7024cf99085ceca7e12aaf82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.24.2/cratis-3.24.2-linux-arm64.tar.gz"
      sha256 "b7f514969d61e8222fceb1fa8d3cd0f2cc699e3f51ccf05dc5cac818db04b204"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.24.2/cratis-3.24.2-linux-x64.tar.gz"
      sha256 "6d1b9caa08641571b291f3a78da604637975de0c9ed2624352ca63aa4c00f565"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.105.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.105.0/cratis-3.105.0-osx-arm64.tar.gz"
      sha256 "ee4a27af5dfdf51df4f491e15cb91a4e68071f3a6de7f537c332593157b0e0b4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.105.0/cratis-3.105.0-osx-x64.tar.gz"
      sha256 "97f9a4b8ce9d43e7b20e1ad749c3ee2fee4060699f1c05dc15ad84ae9d544d52"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.105.0/cratis-3.105.0-linux-arm64.tar.gz"
      sha256 "283585513915dcf9cc5a6d88a862e23a68f0a4f4e50bdf09a72e57f3d029aac5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.105.0/cratis-3.105.0-linux-x64.tar.gz"
      sha256 "c191b561de2239be348f04a06c95eb98e2aedd6f8a3e226bfb7019bf2e677b11"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

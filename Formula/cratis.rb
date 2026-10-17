class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.77.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.77.0/cratis-3.77.0-osx-arm64.tar.gz"
      sha256 "23c464e289051953b848b52c8ec9bbb77c79ca9ac9b073c37d6ad828de04db87"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.77.0/cratis-3.77.0-osx-x64.tar.gz"
      sha256 "17f74ac0e9cf710237b9a0f3fb8be0e70687f4becd22c676971a0ddd67314eba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.77.0/cratis-3.77.0-linux-arm64.tar.gz"
      sha256 "db4ae453b54fb6635fe1c47f33fa3dfa2aec220a4582fc05c026a25b0f02e804"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.77.0/cratis-3.77.0-linux-x64.tar.gz"
      sha256 "3a9973859c2d6dc449135de17a048b83e14a4a6028bf34223621251c45ddabdd"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

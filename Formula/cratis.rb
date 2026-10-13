class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.58.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.58.0/cratis-3.58.0-osx-arm64.tar.gz"
      sha256 "6b48e7050925e5030338fd5d6d39950fec3853b0b715c92db2a4082292e62e7c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.58.0/cratis-3.58.0-osx-x64.tar.gz"
      sha256 "911ad1247c194575a2df7080d9c6a2a6d52a860725807c166ed9879930562996"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.58.0/cratis-3.58.0-linux-arm64.tar.gz"
      sha256 "422e4c89634ad2e52677c5afd1f021a5a73ea4cbe2a87046d135d7225d602b21"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.58.0/cratis-3.58.0-linux-x64.tar.gz"
      sha256 "7a700131341621dea63d6e31af05695d2a15e691fb6d12035e98af7c80871a26"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

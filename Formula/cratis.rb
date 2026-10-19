class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.86.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.86.0/cratis-3.86.0-osx-arm64.tar.gz"
      sha256 "09439f3a0020d616f91f001a30df273dc93d93073b87d08ae83749a6665f9f87"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.86.0/cratis-3.86.0-osx-x64.tar.gz"
      sha256 "c34cacdb4f6b29d8b37d440906589a0c7f887682b03a46c4ec40aaca9b75b3e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.86.0/cratis-3.86.0-linux-arm64.tar.gz"
      sha256 "30d3ad0ba5ec03ed89e50d47843fc409e7348a74067d75eac90410a87984174f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.86.0/cratis-3.86.0-linux-x64.tar.gz"
      sha256 "07d859dd9be79d416d04c8b3229c11109fa7c4de592321d09317f23a6a4d998a"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

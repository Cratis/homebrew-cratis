class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "2.3.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.0/cratis-2.3.0-osx-arm64.tar.gz"
      sha256 "b10477cfc4062e2d9a538b398ae7bc72f669ba07ff04170cab458c5aab3458eb"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.0/cratis-2.3.0-osx-x64.tar.gz"
      sha256 "3caf07c36b67c22d44f1cd0213c12c4636150e1e720da46add99faed2006216f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v2.3.0/cratis-2.3.0-linux-arm64.tar.gz"
      sha256 "deab3cf3b876c3d2b427173bb23e82ad37754cb5967d12eafa5fbc61faa28f1e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v2.3.0/cratis-2.3.0-linux-x64.tar.gz"
      sha256 "ba843b2c065d3f6338b0ef7cd58c92a990a9d90c28e592066afac970d0d2bf92"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

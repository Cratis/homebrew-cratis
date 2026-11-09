class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.125.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.125.0/cratis-3.125.0-osx-arm64.tar.gz"
      sha256 "ae163024ab6ae1fcef5d5f82ec0f458ecb88d2b19a6d04f13bb9e19997bd053f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.125.0/cratis-3.125.0-osx-x64.tar.gz"
      sha256 "6f5b21073df7e76312474f3aaad175801ea1e300c4ade692106de53c674275cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.125.0/cratis-3.125.0-linux-arm64.tar.gz"
      sha256 "db4438c4f3f270cbf0c0f45b56770b22ab33cb0e5520a9eab20e42b92ff9174c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.125.0/cratis-3.125.0-linux-x64.tar.gz"
      sha256 "65b11b6382c2dd133cb6f7a9bca6fd81db0834aecec11e081812a04b59abed3f"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

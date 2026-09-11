class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.0/cratis-3.1.0-osx-arm64.tar.gz"
      sha256 "16657ad58a771d099bfd883d7b9787f3a444590c1673bd204fabc9d18aaec71c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.0/cratis-3.1.0-osx-x64.tar.gz"
      sha256 "823d5291dc73a8d1e41c53f86cf080a4beb7967ec7fd8732ae29088f4f7d5f6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.0/cratis-3.1.0-linux-arm64.tar.gz"
      sha256 "66b50e84784154bf2d89192bae68d594c7b75a1343ea1b41b0c76ab0accd4363"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.0/cratis-3.1.0-linux-x64.tar.gz"
      sha256 "bd55b4599289eaa254fe989a6226cc1c00cde41625a2a9f514de5c9a5e6b118f"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

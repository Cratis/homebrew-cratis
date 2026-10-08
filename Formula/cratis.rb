class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.37.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.37.0/cratis-3.37.0-osx-arm64.tar.gz"
      sha256 "78a0a8f7e0f888bc91ff0be1b2db1fabb2c2d4d5f32f79fd1bb0d3ba3204f4e9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.37.0/cratis-3.37.0-osx-x64.tar.gz"
      sha256 "7943897d91990a069f06630cab0ef8a0eddc7e95c6129bd50654215a967bd70d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.37.0/cratis-3.37.0-linux-arm64.tar.gz"
      sha256 "c7f6fbbbfc796d643f79ef8ba0c97a311568dbf90518c496529a8470e0e12e88"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.37.0/cratis-3.37.0-linux-x64.tar.gz"
      sha256 "12cb9d492374712d24334457bc28c29b4e8e172a88eb9c4c2fc5d1ea8a586494"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

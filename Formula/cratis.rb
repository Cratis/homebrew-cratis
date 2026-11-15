class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.137.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.137.0/cratis-3.137.0-osx-arm64.tar.gz"
      sha256 "f9fb9a93af554448ce5bf3d2c4dd2f9415404d204abe33f7f761c9a285cfe3e7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.137.0/cratis-3.137.0-osx-x64.tar.gz"
      sha256 "752879576e1b0531cd58344bbf876725fb76f79cc1fb77e510f12d7cdeb66d54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.137.0/cratis-3.137.0-linux-arm64.tar.gz"
      sha256 "d827bb863178e04c01c8943029f5ceee490bcf0fbfa3cc3dd73a30e78be4ce2d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.137.0/cratis-3.137.0-linux-x64.tar.gz"
      sha256 "61337d17a97ae7b5f97ad95b0c4e17dfcacbe48fe8d1a41187a89136cf1a82d6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

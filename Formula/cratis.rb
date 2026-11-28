class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.155.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.155.1/cratis-3.155.1-osx-arm64.tar.gz"
      sha256 "b66108095711745292b14c9ca3679504c173e69452ab980efc3831923ff8dbab"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.155.1/cratis-3.155.1-osx-x64.tar.gz"
      sha256 "d273a62fd580fe80d0a508141f625db92e620012b65f11f190f7a81b88ff1bc4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.155.1/cratis-3.155.1-linux-arm64.tar.gz"
      sha256 "5b5b73e1b3346012798ac1f97bfff5eaa1da7ac59a9ec8e9c553482a521c2f30"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.155.1/cratis-3.155.1-linux-x64.tar.gz"
      sha256 "76834f3fb4bae3dc2d3d935d6b09d3e56b513856c0c76c24f25b15b598421c46"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.21.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.21.3/cratis-3.21.3-osx-arm64.tar.gz"
      sha256 "565b4bfdede5e98d3abab2863c26686224dcc90a9f1927377dca232402b4207a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.21.3/cratis-3.21.3-osx-x64.tar.gz"
      sha256 "2f0e957c1b4af985a59f4dfc39bf430b0e4d03c6376b1bd6e8dbf73b02dfc5ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.21.3/cratis-3.21.3-linux-arm64.tar.gz"
      sha256 "3a40d0c4ce80dcd98c682c6fe62a35eb9746289437fd0309ef33028241cbb7be"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.21.3/cratis-3.21.3-linux-x64.tar.gz"
      sha256 "d5cbf258eb957b43367c3a92fd816191f10fb43472436178b2d2311b28278ff1"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

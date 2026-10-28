class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.108.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.108.0/cratis-3.108.0-osx-arm64.tar.gz"
      sha256 "3ae8ceb139e905954206b8dc0965d2a06a16a5c569ab7f450aa168a2c18a76c1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.108.0/cratis-3.108.0-osx-x64.tar.gz"
      sha256 "b79ac21dd40596889a64ce67f9025428d0c360c63fe7c7fe89da654f8bca3f10"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.108.0/cratis-3.108.0-linux-arm64.tar.gz"
      sha256 "554b9f43a448b73a4fbf2a0200172f4f85f13858e6f29066c66ff711bbfd035d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.108.0/cratis-3.108.0-linux-x64.tar.gz"
      sha256 "82c3722cd06bdcb2fbf1fa700af8fed82d78a03127a9aaa8288e2b2864feb5d1"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

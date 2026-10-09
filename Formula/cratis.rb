class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.40.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.3/cratis-3.40.3-osx-arm64.tar.gz"
      sha256 "dd4726001c1081fd1b75313caa17eea1128f77c1f34c8fa84c7a82ddfec5ba30"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.3/cratis-3.40.3-osx-x64.tar.gz"
      sha256 "b362c72b6a4bdad97789ed9d8e12cbed8f61c7cdaa87697e8d5b9b5b6d4554fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.3/cratis-3.40.3-linux-arm64.tar.gz"
      sha256 "84a4c4527f2cf6efb02745b8f4545f095c5a4fc992cc3a0ce8f8ce05a6c15f0c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.3/cratis-3.40.3-linux-x64.tar.gz"
      sha256 "2b723cee33a42aedc897910b4ddaaaaa8f5358eab8d71eb2a73a3dfb971e5780"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

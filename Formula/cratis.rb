class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.110.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.2/cratis-3.110.2-osx-arm64.tar.gz"
      sha256 "a01043b2213bb47d304fedaed80946430e7babbd7b9f7b27428fd992ce889a69"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.2/cratis-3.110.2-osx-x64.tar.gz"
      sha256 "7ea7fdfb441998b712210221bca1354c0542e05031a33271b1767016d86e0829"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.2/cratis-3.110.2-linux-arm64.tar.gz"
      sha256 "ccd82ef36c43bf728a37af197c4902e9761ed8df769264a4ff51f8f7046922a1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.2/cratis-3.110.2-linux-x64.tar.gz"
      sha256 "93ec55a9a33a67bb1da02ddf4f7dd3c9aabddf1bcb1baca333afad08ec758aa2"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

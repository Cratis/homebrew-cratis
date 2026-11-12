class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.128.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.128.1/cratis-3.128.1-osx-arm64.tar.gz"
      sha256 "1c213061805e9078da49c9c013ce806474c3864c61a62705ef5a4d6fe81dc4c5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.128.1/cratis-3.128.1-osx-x64.tar.gz"
      sha256 "d84faa3865d1e3fac8af1404dc5bf87f51f0eff6486c4bc5f47213bac74f22bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.128.1/cratis-3.128.1-linux-arm64.tar.gz"
      sha256 "b0df101ce171dfcbc23670d204b92f5d51a2f138258862396a083ae33fb693a9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.128.1/cratis-3.128.1-linux-x64.tar.gz"
      sha256 "ce78b2790cb8045a8a87aa7b460935c07279ea06906fd5f5e017285a8770e740"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

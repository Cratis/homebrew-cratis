class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.103.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.4/cratis-3.103.4-osx-arm64.tar.gz"
      sha256 "08f618b93a06a9fad76c1874c08d6364e33cbe612bc7bbc79716214928b8fe43"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.4/cratis-3.103.4-osx-x64.tar.gz"
      sha256 "3ca9d39eda73246a1635e4f917219d2f7279f95e234211ee463be21f050f974c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.4/cratis-3.103.4-linux-arm64.tar.gz"
      sha256 "c30785459efb43d18e00d61ed772ff38358fc36300c49b8dd7f2dab25ec04ea7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.4/cratis-3.103.4-linux-x64.tar.gz"
      sha256 "37e6baceb49861f40893642cec2042026ec6ad0ce41f73ead7dcf9a3a31b923d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

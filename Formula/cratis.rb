class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.20.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.20.1/cratis-3.20.1-osx-arm64.tar.gz"
      sha256 "51e5385eb75984e80db5281d94a539fe232c94676f52d1f6cd72944c30ceb926"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.20.1/cratis-3.20.1-osx-x64.tar.gz"
      sha256 "9423f1329bb5f3020992f4e6fe9b97a3e88cb642204aeb72b0ac54ea26ada7ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.20.1/cratis-3.20.1-linux-arm64.tar.gz"
      sha256 "d3751def14e9a863c3a4b6591001065d98fcc9c98f48f274ec0303f596852913"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.20.1/cratis-3.20.1-linux-x64.tar.gz"
      sha256 "06fa54c74143aef60bf8cedb8a04541d1f42ad3eaea5139053ebdc99decf5ddc"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

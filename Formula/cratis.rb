class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.136.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.136.2/cratis-3.136.2-osx-arm64.tar.gz"
      sha256 "ce459a306983ca1d88293b5ba583d3484b14c8fdc6158695a9c0974cf6e8f65f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.136.2/cratis-3.136.2-osx-x64.tar.gz"
      sha256 "44342bf0373e21ceec37542c57c40886392ae6e22c60e1d3e3d758a12b8cce7b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.136.2/cratis-3.136.2-linux-arm64.tar.gz"
      sha256 "4b085a9edde5c38c949e7bd07853a1edae099dac3100b8e10387758e9594ee59"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.136.2/cratis-3.136.2-linux-x64.tar.gz"
      sha256 "6421e622f51ea44af4a99ba0b85400c9d4538571ebe6579048cda5c8ba61df53"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

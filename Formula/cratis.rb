class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.145.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.145.0/cratis-3.145.0-osx-arm64.tar.gz"
      sha256 "ca86598f74436cd2dbac4820fc9cabaa91e4b3f9c68dc87df99f35e3dc93074d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.145.0/cratis-3.145.0-osx-x64.tar.gz"
      sha256 "94fdc4a5f4a8a73f71588659faa723f0c7484cc5f57b7514bf82f6ce7e81650e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.145.0/cratis-3.145.0-linux-arm64.tar.gz"
      sha256 "ef5a9cb80f474555c17b830357466f7df37257f0f78d2a151e01154b527637d9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.145.0/cratis-3.145.0-linux-x64.tar.gz"
      sha256 "69f75c2377d79ab4d9dc01e5dc293bc060a3d6af0513d8a5abaf57ba9d3656af"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.73.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.73.0/cratis-3.73.0-osx-arm64.tar.gz"
      sha256 "3b22ff8ba2e432a33c7e21dc72b6434f5a63ccf8948991ebdada231180a83d3b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.73.0/cratis-3.73.0-osx-x64.tar.gz"
      sha256 "e9b5e2a1ddc2703a181dc5cdb8dd27d3bdf1cc81296d7a7ab74006f142b5e8a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.73.0/cratis-3.73.0-linux-arm64.tar.gz"
      sha256 "f9e8e0e4c6b7d62bb050ac108e3b633513191480500e99cbb5050eca2470215a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.73.0/cratis-3.73.0-linux-x64.tar.gz"
      sha256 "0ee71931d4c9985d7d54214e641832feb16f449b20da55cb644d7e8735147d93"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

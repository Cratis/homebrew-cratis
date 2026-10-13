class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.59.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.59.0/cratis-3.59.0-osx-arm64.tar.gz"
      sha256 "bd071c4b69d0ddbc632c4e8b7b1be31dbc625869b552ef2a1d89a5ea2ef70fdc"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.59.0/cratis-3.59.0-osx-x64.tar.gz"
      sha256 "2634f3e63157709a81b5bbf6069590b9cd412200bacbc021b426414de2854c64"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.59.0/cratis-3.59.0-linux-arm64.tar.gz"
      sha256 "a0d14991829b20ebec311c30bbc232d4c60bbef3e2bab476edfc638bc389c720"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.59.0/cratis-3.59.0-linux-x64.tar.gz"
      sha256 "2233a000e13f8956d08080a159f180d79579381c4712c27de7c4aca85aeec78d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

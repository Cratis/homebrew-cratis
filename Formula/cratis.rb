class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.55.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.55.0/cratis-3.55.0-osx-arm64.tar.gz"
      sha256 "62d739383726759feb982417dae54859b9ffbb3055171d83e223d1303c26847b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.55.0/cratis-3.55.0-osx-x64.tar.gz"
      sha256 "2a231a02378d5b955f25d50781af50dfb819d2ef7306556eb51bb992b64b4dc1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.55.0/cratis-3.55.0-linux-arm64.tar.gz"
      sha256 "1c55bdd84646a49c9d7c321fc196d6dc6e5879e3a663bd50ce536936a580a4f5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.55.0/cratis-3.55.0-linux-x64.tar.gz"
      sha256 "00acd96bc6ce901695f9af8ff0815dc942e90b8155d6e8ee5988c956498b1b9e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

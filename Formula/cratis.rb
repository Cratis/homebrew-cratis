class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.107.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.107.0/cratis-3.107.0-osx-arm64.tar.gz"
      sha256 "dfb8f6c39e8cc1cbcaf78f95b426f4d1e7dba9a180ae7b674c499638ce7273aa"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.107.0/cratis-3.107.0-osx-x64.tar.gz"
      sha256 "7687cbf5d903df0f5c8c29fd64120b732760f363b87b5c681ba8bf9cc8c3fba0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.107.0/cratis-3.107.0-linux-arm64.tar.gz"
      sha256 "ec3108214e4b4f2ca001ead879f6a4cb696bcddbb6ceddccfd2317a0ceec86fd"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.107.0/cratis-3.107.0-linux-x64.tar.gz"
      sha256 "03092fc11378febb6789ff7792941b9858c118aefe6cdd72cc8a9b35e6ebc395"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

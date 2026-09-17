class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.6.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.6.0/cratis-3.6.0-osx-arm64.tar.gz"
      sha256 "9b433f6989537d99a934f6c4a83338d21c45cfdd9a7c6ea7abc9e4c5f40b4392"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.6.0/cratis-3.6.0-osx-x64.tar.gz"
      sha256 "d1ab806550097394d2803dbb839b767e75875d517572f37bcb64d421e002e6e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.6.0/cratis-3.6.0-linux-arm64.tar.gz"
      sha256 "b064d233438af53952ea3f8236dcd91bc5d999783098cc731411ed2543d7c6d7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.6.0/cratis-3.6.0-linux-x64.tar.gz"
      sha256 "a33ef0dc592a80aca9fed1a85246baa4d3acd200d9836d7841f9135fc2976422"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

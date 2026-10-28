class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.106.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.106.0/cratis-3.106.0-osx-arm64.tar.gz"
      sha256 "d1fdc30a5295772ed805e3886815833030031d0be49ad036383ac61858312e0a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.106.0/cratis-3.106.0-osx-x64.tar.gz"
      sha256 "6d6c9c6482d57457b748f35bb443a538b85405a520025cd7a0b9dbcef43e7e9f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.106.0/cratis-3.106.0-linux-arm64.tar.gz"
      sha256 "8555520204036aff91ebc38d52041975251b53391943c85bb2d0a022dc9232a7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.106.0/cratis-3.106.0-linux-x64.tar.gz"
      sha256 "c6eb972a55c18b7791d3c6a9375741511fcc8f0b3cce123454633b85a9cefa85"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

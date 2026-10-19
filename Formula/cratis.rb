class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.85.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.85.0/cratis-3.85.0-osx-arm64.tar.gz"
      sha256 "6afeda06a89d09bfc0991b3d7faefd4b079c6bc58ef13028da6d1875b7721717"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.85.0/cratis-3.85.0-osx-x64.tar.gz"
      sha256 "e089e71b1ef11bc7060e6345b5c7433a7152125b60cad9f94b1fe40be4bfb9d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.85.0/cratis-3.85.0-linux-arm64.tar.gz"
      sha256 "164a4f643c8e88d3ca2b1c2fdcaa5b88b137b2be406f80196f0423149a59c8e7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.85.0/cratis-3.85.0-linux-x64.tar.gz"
      sha256 "763efae16d2fba394f2393c1e45e9e509625899949542cdcbb0841b037d4d317"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

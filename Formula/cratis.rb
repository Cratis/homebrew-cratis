class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.8.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.8.2/cratis-3.8.2-osx-arm64.tar.gz"
      sha256 "8bedf91850799748fb1a4fdd75399e62ad40987da3b5db3a20e274b13a7bcfbe"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.8.2/cratis-3.8.2-osx-x64.tar.gz"
      sha256 "e677aac651d7548d1f68a73d000b305aa4b6dccad628649df404288cf1971b4c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.8.2/cratis-3.8.2-linux-arm64.tar.gz"
      sha256 "f9bb54be4be69ad58529ade8fd395a550dae7db2ecb3ba8a8a13d5bfeacdd0b5"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.8.2/cratis-3.8.2-linux-x64.tar.gz"
      sha256 "8feec71a3560f55c111c1ba62de2634ae65003bf3a65ed942770f3ffc814dd96"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

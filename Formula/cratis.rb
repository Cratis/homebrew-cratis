class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.120.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.120.1/cratis-3.120.1-osx-arm64.tar.gz"
      sha256 "59c15346454cc6db54f16e02fa17c532006302efa401917321dee74fa893508c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.120.1/cratis-3.120.1-osx-x64.tar.gz"
      sha256 "3618108970427eac6f946dfff55d07a2275d4716c2f2e9a42f16839f47790f54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.120.1/cratis-3.120.1-linux-arm64.tar.gz"
      sha256 "f84e87aa3067a838750e896c133f22fb45099b4f648a10e4576f3ee62fde910a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.120.1/cratis-3.120.1-linux-x64.tar.gz"
      sha256 "65e742b13d313538db18f637a5c8d6a1d8df522140224c8f879fb8254446d382"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

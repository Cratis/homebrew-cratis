class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.45.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.45.0/cratis-3.45.0-osx-arm64.tar.gz"
      sha256 "cfcd240ee2535af50bef096884438f17d1a3e575b592ca40eedacf5fbe37af6a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.45.0/cratis-3.45.0-osx-x64.tar.gz"
      sha256 "90bfba73c5111918832773a483165a865b2d79ef679ccfc8aaf0b15e160a18e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.45.0/cratis-3.45.0-linux-arm64.tar.gz"
      sha256 "98a5907c4528a4855cb7d7836e15ea7dcdfd6c06599b491854b80eac92dad385"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.45.0/cratis-3.45.0-linux-x64.tar.gz"
      sha256 "2bf8cdb9d2aceeb56e3090ea94dfc5833df37061af3bdfb3f4cbf3d29bbbf4ac"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

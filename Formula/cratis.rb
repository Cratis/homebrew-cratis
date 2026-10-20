class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.92.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.92.0/cratis-3.92.0-osx-arm64.tar.gz"
      sha256 "961f7d30b4025246128c8a1893274fee52bfe99b1a21ae76487d7bf1f1b6dc9e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.92.0/cratis-3.92.0-osx-x64.tar.gz"
      sha256 "f64ea21471fb4399f82b46280993d297959207c710ee06a5ddc06025c4b123dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.92.0/cratis-3.92.0-linux-arm64.tar.gz"
      sha256 "774be26fd875ad63be6d4d7f26303da9b7251f3b5dfa2c7bb66d02f412a102d1"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.92.0/cratis-3.92.0-linux-x64.tar.gz"
      sha256 "d36fc3e1763ae35d16cd4f1c6d27ab5b92bbb3d2b1ed65d2fdf7b99ec63725aa"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end

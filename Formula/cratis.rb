class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.49.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.49.0/cratis-3.49.0-osx-arm64.tar.gz"
      sha256 "aef42343278ff29b03ffebe3fd438b669a33e726c58e49b7d2795ed1d7ed077d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.49.0/cratis-3.49.0-osx-x64.tar.gz"
      sha256 "e4c47bdc1e5c757cbfe044fd3d23a18731b60048dd6e444bef11cdd7002bcb43"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.49.0/cratis-3.49.0-linux-arm64.tar.gz"
      sha256 "e21f0d84717256c86318fa62d8a1987ae43aeb4352a1cbffbe014fbb77c7a974"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.49.0/cratis-3.49.0-linux-x64.tar.gz"
      sha256 "6bf2f6b625dd36a441544292a992f861fbbfc4e9e2a8fa61e074daa4a028bdb6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
